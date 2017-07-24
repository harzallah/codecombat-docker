CONTAINER_NAME=codecombat
NAME=harzallah/codecombat
DATA_DIR="/data/db/codecombat/"
APP_DIR="/data/app/codecombat/"
APP_PORT=3000

build:
	mkdir -p $(DATA_DIR)
	mkdir -p $(APP_DIR)
	docker build -t=$(NAME) .

install:
	docker run --rm --name $(CONTAINER_NAME) -v $(DATA_DIR):/data/db -v $(APP_DIR):/opt/codecombat/ -p $(APP_PORT):3000 -t -i $(NAME) /root/install.sh

run:
	docker run --rm --name $(CONTAINER_NAME) -v $(DATA_DIR):/data/db -v $(APP_DIR):/opt/codecombat/ -p $(APP_PORT):3000 -t -i $(NAME)
