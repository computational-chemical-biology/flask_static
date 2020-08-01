build:
	docker build -t static_flask .

bash:
	docker run -it -p 5010:5010 --rm -v $(shell pwd):/home/static_flask --name static_flask static_flask bash

interactive:
	docker run -it -p 5010:5010 --rm -v $(shell pwd):/home/static_flask --name static_flask static_flask sh /home/static_flask/run_server.sh

server:
	docker run -itd -p 5010:5010 --rm -v $(shell pwd):/home/static_flask --name static_flask static_flask sh /home/static_flask/run_server.sh
