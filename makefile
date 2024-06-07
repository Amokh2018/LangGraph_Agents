install:
	@echo "install requirements in LangGraphAgent";\
    . start.sh; \
    pip install -r requirements.txt;
init:
	@echo "Creating Python virtual environment 'LangGraphAgent'"; \
	python3 -m venv ../ENVS/LangGraphAgent; \
	@echo "Activating Python virtual environment 'LangGraphAgent'"; \
	. start.sh; \
	@echo "Installing requirements"; \
	pip install -r requirements.txt; \
	echo "Initialization complete"


run: 
	python3 ./summarize/webapp/app.py
# add the command to run the webapp
test-gen:
	python3 ./summarize/try_generate.py
test-sum:
	python3 ./summarize/try_summarize.py	
# add the command to run the try summarise and generate apps
build:
	docker build -t genapp:v1 . 
# add the command to build the docker image
build-push:

# add the command to build the docker image and push it the the ECR

.PHONY:  init 
