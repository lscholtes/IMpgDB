CREATE TABLE name_basics (
	nconst VARCHAR(50),
	primaryName TEXT,
	birthYear INT,
	deathYear INT,
	primaryProfession TEXT,
	knownForTitles TEXT
);

COPY name_basics FROM '/tmp/name.basics.tsv' WITH (HEADER True);
