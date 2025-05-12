cd $(dirname $0)

./stop-en-remove-container.sh

docker image build -t my-missing-manual-img:latest .

docker container run -dt -p81:80 --name my-missing-manual-cont my-missing-manual-img:latest

