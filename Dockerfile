FROM postgres:latest

ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB imdb

RUN apt-get update; apt-get install -y curl gzip 

RUN for TABLE in title.akas title.basics title.crew title.episode title.principals title.ratings name.basics; \
    do \
	curl https://datasets.imdbws.com/$TABLE.tsv.gz --output tmp/$TABLE.tsv.gz \
	&& gzip -d tmp/$TABLE.tsv.gz; \
    done

COPY src/sql/*.sql /docker-entrypoint-initdb.d/
