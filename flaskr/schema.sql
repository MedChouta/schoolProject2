DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS storedFile;

CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email TEXT NOT NULL,
    password TEXT NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE storedFile(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER NOT NULL,
	filePath TEXT,
    fileName TEXT NOT NULL,
    extension TEXT NOT NULL,
    uploaded TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES user (id)
);