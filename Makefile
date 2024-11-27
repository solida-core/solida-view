
help:
	@echo " "
	@echo " SolidaView: Monitor computational workflows in real time  "
	@echo " https://github.com/solida-core/solida-view"
	@echo " "
	@echo " Please use \`make [options] <target>\` where <target> is one of"
	@echo "     start       bring up SolidaView"
	@echo "     stop        bring down SolidaView"
	@echo "     clean       remove SolidaView from your computer"
	@echo "  "
	@echo " options:"
	@echo "     PORT      		TCP/IP port "
	@echo " "
	@echo " usage: "
	@echo "     make PORT=0000  start"
	@echo " "
	@echo " Docs: https://github.com/solida-core/solida-view/blob/master/README.md"
	@echo " "

start: 	init build run

stop:
		@docker-compose -f ./docker-compose.yml down

build:
		@docker-compose -f ./docker-compose.yml build \
		--build-arg PORT=${PORT} \
		--build-arg LOG_PATH=${LOG_PATH} \

run:
		@docker-compose -f ./docker-compose.yml up -d

clean:
		@docker system prune -a -f

init:
ifndef PORT
	@echo "ERROR: argument PORT is required" && exit 1
endif



