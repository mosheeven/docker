FROM alpine:3.9

LABEL maintainer="dev.mozes"

RUN apk update & apk add python3 py3-pip
    
COPY . /src

WORKDIR /src

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3", "app.py" ]



