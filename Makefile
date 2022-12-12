build:
	sudo docker build -t impgdb .

start:
	sudo docker run -d --name my-impgdb -p 5432:5432 impgdb
	sudo docker start my-impgdb

stop:
	sudo docker stop my-impgdb
	sudo docker rm my-impgdb

restart:
	make stop
	make start

join:
	sudo docker exec -it my-impgdb bash

join-psql:
	sudo docker exec -it my-impgdb psql -h localhost -U postgres -d imdb

