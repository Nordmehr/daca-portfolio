import os
from pathlib import Path

import pandas as pd
from dotenv import load_dotenv
from supabase import create_client


# Loeme .env faili selle Python-failiga samast kaustast.
env_path = Path(__file__).resolve().parent / ".env"
load_dotenv(env_path)


def get_client():
    """Loob Supabase'i kliendi .env faili väärtuste põhjal."""
    url = os.getenv("SUPABASE_URL")
    key = os.getenv("SUPABASE_KEY")

    if not url or not key:
        raise ValueError("Puudub SUPABASE_URL või SUPABASE_KEY.")

    return create_client(url, key)


def fetch_table(table_name, order_column, start_date=None, end_date=None):
    """Pärib tabeli andmed lehekülgede kaupa ja tagastab DataFrame'i."""
    try:
        supabase = get_client()

        all_rows = []
        page_size = 1000
        offset = 0

        while True:
            # Kindel järjestus aitab lehekülgi järjepidevalt pärida.
            query = (
                supabase.table(table_name)
                .select("*")
                .order(order_column)
            )

            # Müügi kuupäevafiltrid lisame ainult siis,
            # kui funktsiooni kasutaja need ette annab.
            if start_date is not None:
                query = query.gte("sale_date", start_date)

            if end_date is not None:
                # Kaasame ka lõppkuupäeva terve päeva.
                next_day = (
                    pd.Timestamp(end_date).normalize()
                    + pd.Timedelta(days=1)
                ).isoformat()
                query = query.lt("sale_date", next_day)

            # range() lõpp on kaasav: 0–999 tähendab 1000 rida.
            response = query.range(
                offset, offset + page_size - 1
            ).execute()

            rows = response.data

            # Tühi lehekülg tähendab, et rohkem ridu pole.
            if not rows:
                break

            all_rows.extend(rows)
            offset += len(rows)

        return pd.DataFrame(all_rows)

    except Exception as error:
        # Anname vea edasi, et pipeline ei jätkaks puudulike andmetega.
        raise RuntimeError(
            f"Tabeli '{table_name}' pärimine ebaõnnestus "
            f"({type(error).__name__})."
        ) from error


def fetch_sales(start_date=None, end_date=None):
    """Tagastab müügiandmed, soovi korral kuupäevavahemikus."""
    return fetch_table(
        "sales",
        "id",
        start_date=start_date,
        end_date=end_date,
    )


def fetch_customers():
    """Tagastab kliendiandmed."""
    return fetch_table("customers", "customer_id")


def fetch_products():
    """Tagastab tooteandmed."""
    return fetch_table("products", "product_id")


# Kontroll käivitub faili otse käivitamisel.
# Teisest failist importides see plokk ei käivitu.
if __name__ == "__main__":
    checks = [
        ("Müügid jaanuaris 2023", lambda: fetch_sales("2023-01-01", "2023-01-31")),
        ("Kliendid", fetch_customers),
        ("Tooted", fetch_products),
    ]

    for name, fetch_function in checks:
        try:
            df = fetch_function()
            print(f"\n{name}: {len(df)} rida, {len(df.columns)} veergu")
            print(df.head())

            if df.empty:
                print("HOIATUS: tabelist ei saadud andmeid.")

        except RuntimeError as error:
            print(f"\nVIGA: {error}")