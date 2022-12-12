CREATE TABLE title_akas (
	titleId  VARCHAR(50),
	ordering INT,
	title TEXT,
	region TEXT,
	language TEXT,
	types TEXT,
	attributes TEXT,
	isOriginalTitle BOOLEAN
);

COPY title_akas FROM '/tmp/title.akas.tsv' WITH (HEADER True);
