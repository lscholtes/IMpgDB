CREATE TABLE title_episode (
	tconst VARCHAR(50),
	parentTconst VARCHAR(50),
	seasonNumber INT,
	episodeNumber INT
);

COPY title_episode FROM '/tmp/title.episode.tsv' WITH (HEADER True);
