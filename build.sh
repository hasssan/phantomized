set -e

docker rm phantomized
docker build -t phantomized .
docker run --name phantomized -e PHANTOM_VERSION=2.1.1 phantomized
docker cp phantomized:/app/dockerized-phantomjs.tar.gz ./dockerized-phantomjs.tar.gz
docker rm phantomized
