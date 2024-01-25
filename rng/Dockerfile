FROM python:3.12-alpine
WORKDIR /usr/app/
RUN pip install Flask
COPY rng.py /

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
    
USER docker

CMD ["python", "rng.py"]
EXPOSE 8080
