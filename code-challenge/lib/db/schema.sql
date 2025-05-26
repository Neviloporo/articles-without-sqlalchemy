CREATE TABLE IF NOT EXISTS authors (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS magazines (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS articles (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author_id INTEGER NOT NULL,
    magazine_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (magazine_id) REFERENCES magazines(id)
);
