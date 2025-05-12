docker image build -t my-missing-manual-img:latest .

docker container run -dt -p 8080:81 --name my-missing-manual-cont my-missing-manual-img:latest

docker exec -i -t my-missing-manual /bin/bash
