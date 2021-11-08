```shell script
docker search tensorflow

tensorflow/tensorflow
jupyter/tensorflow-notebook

docker pull tensorflow/tensorflow
docker pull jupyter/tensorflow-notebook
```

```shell script
docker pull jupyter/tensorflow-notebook
docker run -d -p 8888:8888 jupyter/tensorflow-notebook
docker run jupyter/tensorflow-notebook

docker inspect jupyter/tensorflow-notebook
docker inspect -f {{".Size"}} docker.io/mysql:5.7
docker history docker.io/mysql:5.7
docker history --no-trunc docker.io/mysql:5.7

docker exec -it <CONTAINER ID> jupyter notebook list
```