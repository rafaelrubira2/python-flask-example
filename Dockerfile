FROM python:3.8-slim-buster
ENV APP_PORT 3000

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE ${APP_PORT}

# Obs: não recomendado para produção
# mais informações: https://flask.palletsprojects.com/en/2.2.x/deploying/
CMD [ "python3", "app.py" ]
