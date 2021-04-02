[![CircleCI](https://circleci.com/gh/ig21/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/ig21/project-ml-microservice-kubernetes)


## Project Overview


In this project we are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project we operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

### Completed Project Tasks

* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy our containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


---

## Setup the Environment locally for testing

* Create a virtualenv and activate it
* python3 -m venv ~/.devops
* source ~/.devops/bin/activate
* Run `make install` to install the necessary dependencies
* While you still have your .devops environment activated, you will still need to install: Docker, Hadolint, Kubernetes (Minikube)
* Run make lint to check final version of Docker file

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Prediction application will be running on http://hostip:8000
5. While it is running execute make_predicion.sh to invoke predicting application in the conainer app.py via API calls

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Project Files Overview

* __.circleci/config.yml:__ Configuration file for CircleCI
* __Dockerfile:__ Spec that isntructs docker how to buil application container
* __Makefile:__ All the required commands to install and lint the applicaiton
* __app.py:__ Boston housing prices predicting application 
* __requirements.txt:__ List of required packages to be installed for our application to run
* __model_data/boston_housing_prediction.joblib:__ Pre-trained, `sklearn` model that has been trained to predict housing prices in Boston, used by app.py
* __run_docker.sh:__ Shell script that builds and runs the docker container
* __run_kubernetes.sh:__ Shell script that runs prediction app as a pod in kubernetes
* __make_prediction.sh:__ Prediction application invokation script 
* __upload_docker.sh:__ Shell script that tags and uploads our docker image to dockerhub
* __output_txt_files/docker_out.txt:__ Running run_docker.sh and make_prediction.sh output file 
* __output_txt_files/kubernetes_out.txt__ Running run_kubernetes.sh and make_prediction.sh output file

