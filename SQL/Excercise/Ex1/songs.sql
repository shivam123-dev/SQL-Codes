CREATE TABLE songs (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    PRIMARY KEY (id),
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES albums (id)
);
