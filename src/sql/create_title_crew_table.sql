CREATE TABLE title_crew (
	tconst  VARCHAR(50),
	directors TEXT,
	writers TEXT
);

COPY title_crew FROM '/tmp/title.crew.tsv' WITH (HEADER True);
