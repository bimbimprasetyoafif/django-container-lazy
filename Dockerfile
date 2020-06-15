# i used python 3 or above
FROM python:3

ENV PYTHONUNBUFFERED 1

# reuirement copy first
COPY requirements.txt requirements.txt

# install requirements that i have beem copied and make dir for porject
RUN pip install -r requirements.txt &&\
    mkdir project_name

# copy all my folder project into it
COPY project_name project_name

# used the dir for this immage
WORKDIR project_name