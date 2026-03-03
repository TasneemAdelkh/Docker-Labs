FROM alpine

WORKDIR /basic-flask-app

COPY . .

RUN apk add --no-cache python3 py3-pip

RUN pip install flask --break-system-packages

ENTRYPOINT ["python","routes.py"]
