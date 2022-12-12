CREATE TABLE title_ratings (
	tconst  VARCHAR(50),
	averageRating NUMERIC,
	numVotes INT
);

COPY title_ratings FROM '/tmp/title.ratings.tsv' WITH (HEADER True);
