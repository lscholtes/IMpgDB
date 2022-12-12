# 🎥 IMpgDB 💽

Scripts to setup and populate a postgres instance for the [IMDB database](https://www.imdb.com/interfaces/).

To use, clone repo and run `make build` to build the docker image. Then run `make start` to start a container running the image. 

Note that the database tables are initialised and populated upon starting the container, and you will be unable to connect to the postgres database until this has been completed - this will take a few minutes!

You may then connect to and browse the database using your preferred postgres client, using the following settings and credentials:
```
host: localhost
port: 5432
user: postgres
password: docker
database: imdb
```

Note that the total size of the database is currently around 6GB.
