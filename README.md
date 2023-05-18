# node_with_docker

Follows the original freeCodeCamp tutorial, [How to Get Started with Docker using NodeJS](https://www.freecodecamp.org/news/how-to-get-started-with-docker-using-nodejs/) by [Arunachalam B](https://github.com/5minslearn).

Used as demo code for the [Docker Lab Meetup](https://www.meetup.com/okccoffeeandcode/events/293506084).

Follow-up to the Intro to Docker Meetup ([presentation](intro_docker_presentation.pdf), [repo](https://github.com/pythoninthegrass/docker_101)).

## Quickstart
```bash
# install docker desktop (https://www.docker.com/products/docker-desktop/)
brew install --cask docker                  # macos
curl -fsSL https://get.docker.com | bash    # linux
choco install docker                        # windows

# install npm (https://nodejs.org/en/download/package-manager)
brew install npm                            # macos
choco install nodejs.install                # windows
# ubuntu linux
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# build image
docker build -t <dockerhub_username>/node_with_docker:<version> .

# list running docker containers
docker ps

# run container on tcp port 8000
docker run --rm -d --name node_with_docker -p 8000:8000 <dockerhub_username>/node_with_docker:0.0.1

# tag image as latest
docker tag <dockerhub_username>/node_with_docker:0.0.1 <dockerhub_username>/node_with_docker:latest

# mount local directory to container
docker run --rm -d --name my_node_with_docker -p 8000:8000 -v $(pwd):/app <dockerhub_username>/node_with_docker:latest

# exec into container
λ docker exec -it my_node_with_docker bash
root@f5092223f42f:/app# cat /etc/os-release 
PRETTY_NAME="Debian GNU/Linux 11 (bullseye)"
NAME="Debian GNU/Linux"
VERSION_ID="11"
<SNIP>
root@f5092223f42f:/app# exit
exit

# stop container
docker stop my_node_with_docker

# login to docker hub (registry)
docker login

# push to registry
docker push <dockerhub_username>/node_with_docker:0.0.1
```

## Further Reading

[Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

[Node.js v20.1.0 Documentation](https://nodejs.org/dist/latest-v20.x/docs/api/)

[docker stop does not send SIGTERM to node app | siddharth's space](https://sidshome.wordpress.com/2021/05/14/docker-stop-does-not-send-sigterm-to-node-app/)

[FROM:latest](https://www.fromlatest.io/#/)

[Semantic Versioning 2.0.0 | Semantic Versioning](https://semver.org/)
