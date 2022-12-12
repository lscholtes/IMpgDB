CREATE TABLE title_principals (
	tconst  VARCHAR(50),
	ordering INT,
	nconst VARCHAR(50),
	category TEXT,
	job TEXT,
	characters TEXT
);

COPY title_principals FROM '/tmp/title.principals.tsv' WITH (HEADER True);
