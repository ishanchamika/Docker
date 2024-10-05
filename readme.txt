Started my Tea factory MERN project development

__build the docker image
docker build -t tea-factory-image .

__show all docker images
docker images

__make a container(without a name)
docker run tea-factory-image

__make container(with a name)
docker run --name tea-container tea-factory-image

__Already running containers
docker ps

__All containers
docker ps -a

__Remove all running images and containers
docker system prune -a

