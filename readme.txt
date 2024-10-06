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

__Remove image
docker image rm tea-factory-image

__Remove container
docker container rm  tea-container

__Create container using image with Expose PORT
docker run --name tea-container -p 3005:3000 tea-factory-image
(3000: exposed port from container)
(3005: Opening port from local pc browser)

__Stop the container
docker stop tea-container

__Run container with volumes, Expose ports
docker run --name tea-container -p 3005:3000 --rm -v /app/node_modules -v ${PWD}:/app -e CHOKIDAR_USEPOLLING=true tea-factory-image
docker run --name tea-container -p 3005:3000 --rm -v /app/node_modules -v H:/Docker/frontend:/app -e CHOKIDAR_USEPOLLING=true tea-factory-image