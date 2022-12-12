# 🎥 IMpgDB 💽

Scripts to setup and populate a postgres instance for the [IMDB database](https://www.imdb.com/interfaces/).

To use, clone repo and run `make build` to build the docker image. This will take a few minutes at least, depending on your internet connection, as it requires downloading around a gigabyte of raw data from [here](https://datasets.imdbws.com/).

Once the image has been successfully built, run `make start` to start a container running the image.

The database tables are initialised and populated upon starting the container, and **you will be unable to connect to the postgres database until this has been completed** - this will take at least around 5-10 minutes!

You may then connect to and browse the database using your preferred postgres client, using the following settings and credentials:
```
host: localhost
port: 5432
user: postgres
password: docker
database: imdb
```

Note that the total size of the database is currently around 6GB.
