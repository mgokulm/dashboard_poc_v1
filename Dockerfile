FROM python:3.9-slim

RUN apt-get update
RUN apt-get install -y python3-pip python3.11
RUN pip3 install --upgrade pip
RUN pip3 install pipenv

WORKDIR /usr/src/app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8501
ENTRYPOINT ["streamlit", "run", "dashboard.py", "--server.port=8501", "--server.address=0.0.0.0"]