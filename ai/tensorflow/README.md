```shell script
docker search tensorflow

tensorflow/tensorflow
jupyter/tensorflow-notebook

docker pull tensorflow/tensorflow
docker pull jupyter/tensorflow-notebook

sudo docker build -t pumpkin-tensorflow:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-tensorflow-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-tensorflow:1.0 yiluxiangbei/pumpkin-tensorflow:1.0
sudo docker push yiluxiangbei/pumpkin-tensorflow:1.0

sudo docker tag pumpkin-tensorflow:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow:1.0

sudo docker tag pumpkin-tensorflow-notebook:1.0 yiluxiangbei/pumpkin-tensorflow-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-tensorflow-notebook:1.0

sudo docker tag pumpkin-tensorflow-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow-notebook:1.0

ls /usr/local/lib/python3.8/dist-packages/tensorflow/

docker pull tensorflow/tensorflow:latest-jupyter
docker run -it -p 8888:8888 tensorflow/tensorflow:latest-jupyter
```

```shell script
docker pull jupyter/tensorflow-notebook
docker run -d -p 8888:8888 jupyter/tensorflow-notebook
docker run jupyter/tensorflow-notebook

docker inspect jupyter/tensorflow-notebook
docker history jupyter/tensorflow-notebook

docker inspect -f {{".Size"}} docker.io/mysql:5.7
docker history docker.io/mysql:5.7
docker history --no-trunc docker.io/mysql:5.7

docker exec -it <CONTAINER ID> jupyter notebook list

sudo docker tag jupyter/tensorflow-notebook registry.cn-beijing.aliyuncs.com/luomor/jupyter-tensorflow-notebook:20211108
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/jupyter-tensorflow-notebook:20211108

docker inspect tensorflow/tensorflow
docker history tensorflow/tensorflow

tensorflow/tensorflow:latest-jupyter

docker commit f5cc4c90177f pumpkin-tensorflow:latest-jupyter

sudo docker tag pumpkin-tensorflow:latest-jupyter yiluxiangbei/pumpkin-tensorflow:latest-jupyter
sudo docker push yiluxiangbei/pumpkin-tensorflow:latest-jupyter

sudo docker tag pumpkin-tensorflow:latest-jupyter registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow:latest-jupyter
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-tensorflow:latest-jupyter
```

```shell script
docker pull tensorflow/tensorflow

sudo docker tag tensorflow/tensorflow registry.cn-beijing.aliyuncs.com/luomor/tensorflow-tensorflow:20211109
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/tensorflow-tensorflow:20211109
```

```
Docker images国内镜像
镜像地址
1) 阿里云 docker hub mirror
https://registry.cn-hangzhou.aliyuncs.com

如果有账号的, 使用:

[系统分配前缀].mirror.aliyuncs.com
具体上阿里云容器HUB控制台查看.

2) 腾讯云 docker hub mirror
https://mirror.ccs.tencentyun.com

3) 华为云
https://05f073ad3c0010ea0f4bc00b7105ec20.mirror.swr.myhuaweicloud.com

4) docker中国
https://registry.docker-cn.com

5) 网易
http://hub-mirror.c.163.com

6) daocloud
http://f1361db2.m.daocloud.io

修改步骤
直接修改 /etc/docker/daemon.json (docker 版本 >= 1.10 时) 内容为:

{"registry-mirrors": ["https://registry.cn-hangzhou.aliyuncs.com"]}
修改后重启服务:

systemctl daemon-reload
systemctl restart docker
```

```
docker inspect jupyter/tensorflow-notebook
[
    {
        "Id": "sha256:75a460bb409edb200b7f60b73ebf0287a361128070e60b53e36acb41c22fc98a",
        "RepoTags": [
            "jupyter/tensorflow-notebook:latest"
        ],
        "RepoDigests": [
            "jupyter/tensorflow-notebook@sha256:631d8a96ac380551b37da218f3d1828e5a5d16a19850b050cf369562661bd0dc"
        ],
        "Parent": "",
        "Comment": "buildkit.dockerfile.v0",
        "Created": "2021-11-08T04:57:40.067227711Z",
        "Container": "",
        "ContainerConfig": {
            "Hostname": "",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": null,
            "Cmd": null,
            "Image": "",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": null
        },
        "DockerVersion": "",
        "Author": "",
        "Config": {
            "Hostname": "",
            "Domainname": "",
            "User": "1000",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "8888/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/opt/conda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "DEBIAN_FRONTEND=noninteractive",
                "CONDA_DIR=/opt/conda",
                "SHELL=/bin/bash",
                "NB_USER=jovyan",
                "NB_UID=1000",
                "NB_GID=100",
                "LC_ALL=en_US.UTF-8",
                "LANG=en_US.UTF-8",
                "LANGUAGE=en_US.UTF-8",
                "HOME=/home/jovyan",
                "XDG_CACHE_HOME=/home/jovyan/.cache/"
            ],
            "Cmd": [
                "start-notebook.sh"
            ],
            "ArgsEscaped": true,
            "Image": "",
            "Volumes": null,
            "WorkingDir": "/home/jovyan",
            "Entrypoint": [
                "tini",
                "-g",
                "--"
            ],
            "OnBuild": null,
            "Labels": {
                "maintainer": "Jupyter Project <jupyter@googlegroups.com>"
            },
            "Shell": [
                "/bin/bash",
                "-o",
                "pipefail",
                "-c"
            ]
        },
        "Architecture": "amd64",
        "Os": "linux",
        "Size": 7851162649,
        "VirtualSize": 7851162649,
        "GraphDriver": {
            "Data": {
                "LowerDir": "/data/var/lib/docker/overlay2/07653f059a4eb18323659458a877eef22f4b0371c40caa10e5af7b89a753526e/diff:/data/var/lib/docker/overlay2/61481f56d1f631f826a160b11625e99fde50d919353108515d227dac9950f9cb/diff:/data/var/lib/docker/overlay2/46081b3b7ac7d98eb9b82bdbad2d1ac53453a5e66bbf2415c5133eadd5771591/diff:/data/var/lib/docker/overlay2/d56a5913092d2c6b303410212df01c25f0fb142b09ba24c954df28d42b1c27cc/diff:/data/var/lib/docker/overlay2/32af1cd0d01c63301872337e83e703ad9e76b438810a07c2eb87f2d7aec92c89/diff:/data/var/lib/docker/overlay2/7addd605f670027924072cf55002df84b641961fd08ebc6571733c50d2e0551a/diff:/data/var/lib/docker/overlay2/8023e348b55687037a09fab3129c016cfbe5e3da8586755e7abbca419ba10dab/diff:/data/var/lib/docker/overlay2/37adc026fc8dee2dfa88cd43c33af577a218ed2b6347b70fee1bfb0ff31ca14b/diff:/data/var/lib/docker/overlay2/592089ec00935c7120f798af7979604ee917b4f641402ebe0d79d50fa8412e8b/diff:/data/var/lib/docker/overlay2/44677ad111db29913384d8fa84ccf27b71f845b8aa157a19c7d5df822b6f2e3a/diff:/data/var/lib/docker/overlay2/ed508833644060ee806800aaffceb4f5a7804b3a8bc0b9cd6873928d91984190/diff:/data/var/lib/docker/overlay2/fb95df010a0497d544a876607a85cba9ab9afafaa4cc8f32529060b772b3625c/diff:/data/var/lib/docker/overlay2/46c85627a93414ab1c049d2d91c6d4ce371cd994bdc24d09c850de6b64e2e552/diff:/data/var/lib/docker/overlay2/bb15fc500e2e513271dbbd8e58f7c35563f3e598410f84ae0cb862abd8089df2/diff:/data/var/lib/docker/overlay2/9804b844fb6e5306491a2af1ddaf5786cdaaa814eb5f52d708095c830bf5ab62/diff:/data/var/lib/docker/overlay2/5df0146defffddbed5eb6bc8fecbbeefe4d748056a25cc3e8a74b056961ced45/diff:/data/var/lib/docker/overlay2/bb7f40e07338693d4a0c0a83df6ec84a85e7f7066c098579ea46de141287e0a0/diff",
                "MergedDir": "/data/var/lib/docker/overlay2/3cda480eb96a7efd412037ab3ff2f4a5534317a320f9d3c4551f180635336f4c/merged",
                "UpperDir": "/data/var/lib/docker/overlay2/3cda480eb96a7efd412037ab3ff2f4a5534317a320f9d3c4551f180635336f4c/diff",
                "WorkDir": "/data/var/lib/docker/overlay2/3cda480eb96a7efd412037ab3ff2f4a5534317a320f9d3c4551f180635336f4c/work"
            },
            "Name": "overlay2"
        },
        "RootFS": {
            "Type": "layers",
            "Layers": [
                "sha256:9f54eef412758095c8079ac465d494a2872e02e90bf1fb5f12a1641c0d1bb78b",
                "sha256:a32551b119e2f23cc47f22aacd81f36389e220753b562bd5d0b32973b85fd8c7",
                "sha256:cf2a54c4748294661ea6d48d0da165c1d56eda785d56f05906d654ef3d118cef",
                "sha256:19d0d346d8680755102413d9bf3078cebc82dcff662d80505cd837fa82239a42",
                "sha256:21ac486c012731370069c85735e785dda30774e7c262dd8900e2c9cd58e6006b",
                "sha256:38589b21a008747bd4c56e06f0c70bbfd5884c906e3e0015da073f64f70d55b4",
                "sha256:4de1b82a7c41ce88a76658d0807a21888465698cbb574abae6ff92e69ef0ab01",
                "sha256:dc7175c2a386608dd7bb6c62e252c36717ae6ba7d53d3873d0cff81999a5625f",
                "sha256:e2c97ba66eeb7b5e4ab2bc6403a0b64d8cd70e02555a5ee84f2132fe72d8a419",
                "sha256:074821d9ebe71ee4e13330ef1b71eb3726c45790cc8dfa970ea4b1f64a9c83e8",
                "sha256:4b79262a9242b13754b5d5c37c469d44f92368393d3c756c7985562db1689ec6",
                "sha256:8006663676fa7d8444c5d0e153dafe2a1108a045476618fdeee330d612b19afd",
                "sha256:a97a344c5ce7f92f0afb895e51f4c4139b2eabdb6f61f73b46fc53e1b29a90a5",
                "sha256:59d3c9b7fa76e9a1365c6f75d8adea86bb11b8303c68722ef7287cb30c97b4c6",
                "sha256:6aefc4ddec7973a1b8680e3e2a3f7c2485d5307801cd399c3961eb0204917c96",
                "sha256:254d072ef4201df5124f3b627fe46e97bface04dd63d52b7ece975cd0d740ef7",
                "sha256:917e8b455fcd93552c37c3fdb1271f3e61ac084a639675dc5bf8d00b305fefc4",
                "sha256:11c814a8e6e124105b1c17c40858bcc7377172bd79f2b7c7027a334a3525035a"
            ]
        },
        "Metadata": {
            "LastTagTime": "0001-01-01T00:00:00Z"
        }
    }
]
```

```
docker history jupyter/tensorflow-notebook
IMAGE          CREATED       CREATED BY                                      SIZE      COMMENT
75a460bb409e   6 hours ago   RUN /bin/bash -o pipefail -c mamba install -…   5.26GB    buildkit.dockerfile.v0
<missing>      6 hours ago   SHELL [/bin/bash -o pipefail -c]                0B        buildkit.dockerfile.v0
<missing>      6 hours ago   LABEL maintainer=Jupyter Project <jupyter@go…   0B        buildkit.dockerfile.v0
<missing>      7 hours ago   WORKDIR /home/jovyan                            0B        buildkit.dockerfile.v0
<missing>      7 hours ago   USER 1000                                       0B        buildkit.dockerfile.v0
<missing>      7 hours ago   RUN /bin/bash -o pipefail -c MPLBACKEND=Agg …   86.2kB    buildkit.dockerfile.v0
<missing>      7 hours ago   ENV XDG_CACHE_HOME=/home/jovyan/.cache/         0B        buildkit.dockerfile.v0
<missing>      7 hours ago   RUN /bin/bash -o pipefail -c git clone https…   2.31MB    buildkit.dockerfile.v0
<missing>      7 hours ago   WORKDIR /tmp                                    0B        buildkit.dockerfile.v0
<missing>      7 hours ago   RUN /bin/bash -o pipefail -c mamba install -…   854MB     buildkit.dockerfile.v0
<missing>      7 hours ago   USER 1000                                       0B        buildkit.dockerfile.v0
<missing>      7 hours ago   RUN /bin/bash -o pipefail -c apt-get update …   359MB     buildkit.dockerfile.v0
<missing>      7 hours ago   USER root                                       0B        buildkit.dockerfile.v0
<missing>      7 hours ago   LABEL maintainer=Jupyter Project <jupyter@go…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    USER 1000                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN /bin/bash -o pipefail -c update-alternat…   9.99kB    buildkit.dockerfile.v0
<missing>      3 days ago    RUN /bin/bash -o pipefail -c apt-get update …   697MB     buildkit.dockerfile.v0
<missing>      3 days ago    USER root                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    LABEL maintainer=Jupyter Project <jupyter@go…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    WORKDIR /home/jovyan                            0B        buildkit.dockerfile.v0
<missing>      3 days ago    USER 1000                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN |5 NB_USER=jovyan NB_UID=1000 NB_GID=100…   3.66kB    buildkit.dockerfile.v0
<missing>      3 days ago    USER root                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    COPY jupyter_notebook_config.py /etc/jupyter…   1.84kB    buildkit.dockerfile.v0
<missing>      3 days ago    COPY start.sh start-notebook.sh start-single…   8.1kB     buildkit.dockerfile.v0
<missing>      3 days ago    CMD ["start-notebook.sh"]                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    ENTRYPOINT ["tini" "-g" "--"]                   0B        buildkit.dockerfile.v0
<missing>      3 days ago    EXPOSE map[8888/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN |5 NB_USER=jovyan NB_UID=1000 NB_GID=100…   325MB     buildkit.dockerfile.v0
<missing>      3 days ago    RUN |5 NB_USER=jovyan NB_UID=1000 NB_GID=100…   247MB     buildkit.dockerfile.v0
<missing>      3 days ago    ARG CONDA_MIRROR=https://github.com/conda-fo…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    WORKDIR /tmp                                    0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN |4 NB_USER=jovyan NB_UID=1000 NB_GID=100…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    ARG PYTHON_VERSION=default                      0B        buildkit.dockerfile.v0
<missing>      3 days ago    USER 1000                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN |3 NB_USER=jovyan NB_UID=1000 NB_GID=100…   11.6kB    buildkit.dockerfile.v0
<missing>      3 days ago    RUN |3 NB_USER=jovyan NB_UID=1000 NB_GID=100…   3.82kB    buildkit.dockerfile.v0
<missing>      3 days ago    RUN |3 NB_USER=jovyan NB_UID=1000 NB_GID=100…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    COPY fix-permissions /usr/local/bin/fix-perm…   1.03kB    buildkit.dockerfile.v0
<missing>      3 days ago    ENV PATH=/opt/conda/bin:/usr/local/sbin:/usr…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    ENV CONDA_DIR=/opt/conda SHELL=/bin/bash NB_…   0B        buildkit.dockerfile.v0
<missing>      3 days ago    RUN |3 NB_USER=jovyan NB_UID=1000 NB_GID=100…   30.8MB    buildkit.dockerfile.v0
<missing>      3 days ago    ENV DEBIAN_FRONTEND=noninteractive              0B        buildkit.dockerfile.v0
<missing>      3 days ago    USER root                                       0B        buildkit.dockerfile.v0
<missing>      3 days ago    SHELL [/bin/bash -o pipefail -c]                0B        buildkit.dockerfile.v0
<missing>      3 days ago    ARG NB_GID=100                                  0B        buildkit.dockerfile.v0
<missing>      3 days ago    ARG NB_UID=1000                                 0B        buildkit.dockerfile.v0
<missing>      3 days ago    ARG NB_USER=jovyan                              0B        buildkit.dockerfile.v0
<missing>      3 days ago    LABEL maintainer=Jupyter Project <jupyter@go…   0B        buildkit.dockerfile.v0
<missing>      3 weeks ago   /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>      3 weeks ago   /bin/sh -c #(nop) ADD file:5d68d27cc15a80653…   72.8MB
```