```shell script
docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0
docker run -it registry.baidubce.com/paddlepaddle/paddle:2.2.0 /bin/bash

sudo docker build -t pumpkin-paddlepaddle:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-paddlepaddle-notebook:1.0 -f ./Dockerfile.lab .

sudo docker build -t pumpkin-paddlepaddle:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-paddlepaddle-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-paddlepaddle:1.0 yiluxiangbei/pumpkin-paddlepaddle:1.0
sudo docker push yiluxiangbei/pumpkin-paddlepaddle:1.0

sudo docker tag pumpkin-paddlepaddle:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddlepaddle:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddlepaddle:1.0

sudo docker tag pumpkin-paddlepaddle-notebook:1.0 yiluxiangbei/pumpkin-paddlepaddle-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-paddlepaddle-notebook:1.0

sudo docker tag pumpkin-paddlepaddle-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddlepaddle-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddlepaddle-notebook:1.0

docker pull paddlepaddle/paddle
docker run -it paddlepaddle/paddle bash

docker run -p8881:8888 paddlepaddle/book

docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-jupyter
docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7
docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda11.2-cudnn8

docker pull paddlepaddle/paddle:2.2.0
docker pull paddlepaddle/paddle:2.2.0-jupyter
docker pull paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7
docker pull paddlepaddle/paddle:2.2.0-gpu-cuda11.2-cudnn8

docker run --name paddle_docker -it -v $PWD:/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0 /bin/bash

python -m pip install paddlepaddle==2.2.0 -i https://mirror.baidu.com/pypi/simple

mkdir ./jupyter_docker
chmod 777 ./jupyter_docker
cd ./jupyter_docker
docker run -p 80:80 --rm --env USER_PASSWD="password you set" -v $PWD:/home/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0-jupyter

# https://github.com/NVIDIA/nvidia-docker
nvidia-docker run --name paddle_docker -it -v $PWD:/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7 /bin/bash
```

```shell script
1. 拉取PaddlePaddle镜像
对于国内用户，因为网络问题下载docker比较慢时，可使用百度提供的镜像：

CPU版的PaddlePaddle：

docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0
CPU版的PaddlePaddle，且镜像中预装好了 jupyter：

docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-jupyter
GPU版的PaddlePaddle：

docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7
docker pull registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda11.2-cudnn8
如果您的机器不在中国大陆地区，可以直接从DockerHub拉取镜像：

CPU版的PaddlePaddle：

docker pull paddlepaddle/paddle:2.2.0
CPU版的PaddlePaddle，且镜像中预装好了 jupyter：

docker pull paddlepaddle/paddle:2.2.0-jupyter
GPU版的PaddlePaddle：

docker pull paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7
docker pull paddlepaddle/paddle:2.2.0-gpu-cuda11.2-cudnn8
您还可以访问DockerHub获取更多镜像。

2. 构建并进入docker容器
使用CPU版本的PaddlePaddle：

docker run --name paddle_docker -it -v $PWD:/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0 /bin/bash
--name paddle_docker：设定Docker的名称，paddle_docker 是自己设置的名称；

-it：参数说明容器已和本机交互式运行；

-v $PWD:/paddle：指定将当前路径（PWD变量会展开为当前路径的绝对路径）挂载到容器内部的 /paddle 目录；

registry.baidubce.com/paddlepaddle/paddle:2.2.0：指定需要使用的image名称，您可以通过docker images命令查看；/bin/bash是在Docker中要执行的命令

使用CPU版本的PaddlePaddle，且镜像中预装好了 jupyter：

mkdir ./jupyter_docker
chmod 777 ./jupyter_docker
cd ./jupyter_docker
docker run -p 80:80 --rm --env USER_PASSWD="password you set" -v $PWD:/home/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0-jupyter
--rm：关闭容器后删除容器；

--env USER_PASSWD="password you set"：为 jupyter 设置登录密码，password you set 是自己设置的密码；

-v $PWD:/home/paddle：指定将当前路径（PWD变量会展开为当前路径的绝对路径）挂载到容器内部的 /home/paddle 目录；

registry.baidubce.com/paddlepaddle/paddle:2.2.0-jupyter：指定需要使用的image名称，您可以通过docker images命令查看

使用GPU版本的PaddlePaddle：

nvidia-docker run --name paddle_docker -it -v $PWD:/paddle registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7 /bin/bash
--name paddle_docker：设定Docker的名称，paddle_docker 是自己设置的名称；

-it：参数说明容器已和本机交互式运行；

-v $PWD:/paddle：指定将当前路径（PWD变量会展开为当前路径的绝对路径）挂载到容器内部的 /paddle 目录；

registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda10.2-cudnn7：指定需要使用的image名称，如果您希望使用CUDA 11.2的镜像，也可以将其替换成registry.baidubce.com/paddlepaddle/paddle:2.2.0-gpu-cuda11.2-cudnn8。您可以通过docker images命令查看镜像。/bin/bash是在Docker中要执行的命令
```

```
docker search paddlepaddle
NAME                                     DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
paddlepaddle/paddle                      PArallel Distributed Deep LEarning              67
paddlepaddle/book                                                                        6
paddlepaddle/paddle_manylinux_devel                                                      5
paddlepaddle/deep_speech                                                                 3
paddlepaddle/paddle-lite                                                                 2
paddlepaddle/edl-example                                                                 0
paddlepaddle/paddlepaddle.org            Docker image for paddlepaddle.org project.      0
paddlepaddle/paddlefl                    Privacy-Preserving Deep Learning Package Bas…   0
paddlepaddlece/fluid_benchmark                                                           0
paddlepaddle/paddlecloud-job                                                             0
paddlepaddle/serving                                                                     0
paddlepaddle/centos6u3-capi                                                              0
paddlepaddle/cloud                       PaddlePaddleCloud Docker Image                  0                    [OK]
avoli/paddlepaddle-gpu                   Base on 10.0-cudnn7-devel-ubuntu with Paddle…   0
paddlepaddlece/vgg16_dist                                                                0
sunway513/paddlepaddle                   This repo host the private the staging docke…   0
paddlepaddlece/paddle                                                                    0
paddlepaddle/paddlecloud                                                                 0
paddlepaddle/recordiodataset                                                             0
tianshuo78520a/paddlepaddle                                                              0
paddlepaddle/paddlepaddle_cpu_ubuntu16                                                   0
paddlepaddle/pfsserver                                                                   0
paddlepaddle/models                                                                      0
paddlepaddle/paddle-tutorial                                                             0
nguyenthuan/paddlepaddle.org                                                             0
```