FROM python:3.12-alpine

WORKDIR /usr/app/

ENV UID=12345 \
    GID=23456

RUN addgroup -g "$GID" docker && \
    adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup docker \
    --no-create-home \
    --uid "$UID" \
    docker

RUN pip install redis
RUN pip install requests
USER docker
COPY worker.py /usr/app/
CMD ["python", "worker.py"]
