"""UrbanStyle'i töövoog: andmete pärimine, töötlemine ja eksport."""

import argparse
import logging
from datetime import datetime
from pathlib import Path
from time import perf_counter


BASE_DIR = Path(__file__).resolve().parent
logger = logging.getLogger(__name__)


def configure_logging():
    """Näitab edenemist terminalis ja salvestab sama info logifaili."""
    log_dir = BASE_DIR / "logs"
    log_dir.mkdir(exist_ok=True)
    log_file = log_dir / f"pipeline_{datetime.now():%Y%m%d}.log"
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(levelname)s - %(message)s",
        handlers=[
            logging.StreamHandler(),
            logging.FileHandler(log_file, encoding="utf-8"),
        ],
        force=True,
    )


def run_pipeline(start_date=None, end_date=None):
    """Käivitab kõik etapid. Kuupäevadeta kasutatakse kõiki müüke."""
    start_time = perf_counter()
    stage = "Moodulite importimine"

    try:
        # Importimine ei käivita kaaslaste failide __main__ teste.
        from data_fetcher_e import fetch_sales, fetch_customers, fetch_products
        from transform import validate_sales_data, prepare_roll_c_input
        from visualize_export import (
            create_weekly_chart,
            create_kpi_summary,
            export_results,
        )

        stage = "Andmete pärimine"
        logger.info("%s algab. Periood: %s kuni %s", stage,
                    start_date or "algusest", end_date or "lõpuni")
        sales = fetch_sales(start_date, end_date)
        customers = fetch_customers()
        products = fetch_products()

        # Tühi API vastus võib tähendada ka puuduvat lugemisõigust.
        for name, df in [("sales", sales), ("customers", customers),
                         ("products", products)]:
            if df.empty:
                raise ValueError(f"Tabel '{name}' ei tagastanud andmeid.")
            logger.info("%s: %s rida", name, len(df))
        logger.info("Andmete pärimine lõppes.")

        stage = "Andmete töötlemine"
        logger.info("%s algab.", stage)
        # Väldime kliendiliitmisel müügiridade paljunemist.
        if customers["customer_id"].duplicated().any():
            raise ValueError("Klienditabelis on korduvaid customer_id väärtusi.")
        validate_sales_data(sales)
        weekly, kpis, merged = prepare_roll_c_input(sales, customers)
        logger.info("Töötlemine lõppes: %s nädalat, %s ühendatud rida.",
                    len(weekly), len(merged))
        # Tooted on päritud, kuid roll B praegused funktsioonid neid ei kasuta.

        stage = "Graafikute loomine"
        logger.info("%s algab.", stage)
        weekly_fig = create_weekly_chart(weekly)
        kpi_fig = create_kpi_summary(kpis)
        logger.info("Graafikute loomine lõppes.")

        stage = "Tulemuste salvestamine"
        logger.info("%s algab.", stage)
        output_dir = BASE_DIR / "output"
        # CSV-sse salvestame nädalase koondtabeli, mille põhjal tehti graafik.
        csv_path = export_results(weekly, weekly_fig, kpi_fig, str(output_dir))
        logger.info("CSV salvestatud: %s", csv_path)
        logger.info("HTML-graafikud salvestatud kausta: %s", output_dir)
        logger.info("Kogutulu: %.2f EUR; ostnud kliente: %s; keskmine: %.2f EUR",
                    kpis["total_revenue"], kpis["unique_customers"],
                    kpis["avg_order_value"])
        logger.info("Pipeline lõpetatud edukalt. Kestus: %.2f sekundit.",
                    perf_counter() - start_time)
        return True

    except Exception as error:
        # API võtmeid ega täielikku ühenduse veavastust me ei logi.
        logger.error("Pipeline peatus etapis '%s': %s (%s).", stage,
                     str(error) if isinstance(error, (ValueError, RuntimeError,
                                                      ModuleNotFoundError))
                     else "Etapi käivitamine ebaõnnestus",
                     type(error).__name__)
        logger.error("Kestus enne peatumist: %.2f sekundit.",
                     perf_counter() - start_time)
        return False


if __name__ == "__main__":
    # Valikulised kuupäevad saab anda terminalis; koodi muutma ei pea.
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start-date", help="Alguskuupäev kujul YYYY-MM-DD")
    parser.add_argument("--end-date", help="Lõppkuupäev kujul YYYY-MM-DD")
    args = parser.parse_args()

    # Kontrollime kuupäevade vormingut enne API päringuid.
    dates = {}
    for name, value in [("start", args.start_date), ("end", args.end_date)]:
        if value:
            try:
                dates[name] = datetime.strptime(value, "%Y-%m-%d").date()
            except ValueError:
                parser.error("Kuupäev peab olema kujul YYYY-MM-DD.")
    if "start" in dates and "end" in dates and dates["start"] > dates["end"]:
        parser.error("Alguskuupäev ei tohi olla lõppkuupäevast hilisem.")

    configure_logging()
    success = run_pipeline(args.start_date, args.end_date)
    # Veakood 1 võimaldab ka ajastajal ebaõnnestumist tuvastada.
    raise SystemExit(0 if success else 1)
