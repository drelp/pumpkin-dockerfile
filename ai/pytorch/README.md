```shell script
# pytorch/pytorch
docker pull pytorch/pytorch
docker run -it pytorch/pytorch bash

sudo docker build -t pumpkin-pytorch:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-pytorch-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-pytorch:1.0 yiluxiangbei/pumpkin-pytorch:1.0
sudo docker push yiluxiangbei/pumpkin-pytorch:1.0

sudo docker tag pumpkin-pytorch:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-pytorch:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-pytorch:1.0

sudo docker tag pumpkin-pytorch-notebook:1.0 yiluxiangbei/pumpkin-pytorch-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-pytorch-notebook:1.0

sudo docker tag pumpkin-pytorch-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-pytorch-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-pytorch-notebook:1.0
```

```
https://pytorch.org/

https://pytorch.org/tutorials/beginner/basics/quickstart_tutorial.html
```

```
docker search pytorch
NAME                                              DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
pytorch/pytorch                                   PyTorch is a deep learning framework that pu…   368
floydhub/pytorch                                  pytorch                                         47                   [OK]
anibali/pytorch                                   Docker images for the PyTorch deep learning …   31                   [OK]
pytorchlightning/pytorch_lightning                PyTorch Lightning image                         12
pytorch/torchserve                                                                                9
stepankuzmin/pytorch-notebook                     Jupyter Notebook Pytorch Stack                  7                    [OK]
pytorch/pytorch-binary-docker-image-ubuntu16.04                                                   6
thechaos16/pytorch_tf                             ubuntu docker with pytorch, tensorflow          4                    [OK]
spellrun/pytorch-jupyter                                                                          3
spellrun/pytorch                                                                                  2
sinpcw/pytorch                                    PyTorch                                         2
uodcvip/pytorch                                   Rebuild of PyTorch base GPU image for Jupyte…   2
shatu/pytorch                                     Collection of Docker Images for PyTorch         1
jetware/pytorch                                   PyTorch Production                              1
pytorch/conda-builder                                                                             1
clipper/pytorch36-container                       Python 3.6 PyTorch container                    1
pytorch/manylinux-cuda102                                                                         1
nakosung/pytorch                                  pytorch                                         0                    [OK]
ultmaster/pytorch                                                                                 0
nguyenatrowan/pytorch                             Pytorch container                               0
mmdog/pytorch                                                                                     0
synicix/pytorch-fp16-base                                                                         0
puzlcloud/pytorch                                 Pytorch framework with various python runtim…   0
nakosung/pytorch_dev                              pytorch                                         0                    [OK]
xiaoxiaoxh/pytorch                                pytorch-based repo                              0
```