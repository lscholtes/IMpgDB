CREATE TABLE title_basics (
	tconst  VARCHAR(50),
	titleType TEXT,
	primaryTitle TEXT,
	originalTitle TEXT,
	isAdult BOOLEAN,
	startYear INT,
	endYear INT,
	runtimeMinutes INT,
	genres TEXT
);

COPY title_basics FROM '/tmp/title.basics.tsv' WITH (HEADER True);
