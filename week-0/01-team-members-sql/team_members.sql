-- Loo meeskonnaliikmete tabel
CREATE TABLE team_members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    week INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT NOW()
);

-- Lisa tabelisse üks meeskonnaliige
INSERT INTO team_members (name, role, week)
VALUES ('Evelyn', 'Andmeanalüütik', 0);

-- Kuva tabeli andmed
SELECT * FROM team_members;
