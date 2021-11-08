```shell script
docker search tensorflow

tensorflow/tensorflow
jupyter/tensorflow-notebook
```

```
docker pull jupyter/tensorflow-notebook
docker run -d -p 8888:8888 jupyter/tensorflow-notebook
docker run jupyter/tensorflow-notebook

docker exec -it <CONTAINER ID> jupyter notebook list
```