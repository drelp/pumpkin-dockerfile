```shell script
sudo docker build -t pumpkin-paddleocr:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-paddleocr-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-paddleocr:1.0 yiluxiangbei/pumpkin-paddleocr:1.0
sudo docker push yiluxiangbei/pumpkin-paddleocr:1.0

sudo docker tag pumpkin-paddleocr:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr:1.0

sudo docker tag pumpkin-paddleocr-notebook:1.0 yiluxiangbei/pumpkin-paddleocr-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-paddleocr-notebook:1.0

sudo docker tag pumpkin-paddleocr-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr-notebook:1.0

python -m pip install "paddleocr>=2.0.1" -i https://mirror.baidu.com/pypi/simple

paddleocr --image_dir /dataset/0002514084.jpg --use_angle_cls true --use_gpu false

https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_server_v2.0_det_infer.tar
https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_server_v2.0_rec_infer.tar

download https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar to /root/.paddleocr/2.3.0.2/ocr/det/ch/ch_PP-OCRv2_det_infer/ch_PP-OCRv2_det_infer.tar
```

```shell script

```

```
docker search paddleocr
NAME                                     DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
paddleocr/paddle                      PArallel Distributed Deep LEarning              67
paddleocr/book                                                                        6
paddleocr/paddle_manylinux_devel                                                      5
paddleocr/deep_speech                                                                 3
paddleocr/paddle-lite                                                                 2
paddleocr/edl-example                                                                 0
paddleocr/paddleocr.org            Docker image for paddleocr.org project.      0
paddleocr/paddlefl                    Privacy-Preserving Deep Learning Package Bas…   0
paddleocrce/fluid_benchmark                                                           0
paddleocr/paddlecloud-job                                                             0
paddleocr/serving                                                                     0
paddleocr/centos6u3-capi                                                              0
paddleocr/cloud                       PaddlePaddleCloud Docker Image                  0                    [OK]
avoli/paddleocr-gpu                   Base on 10.0-cudnn7-devel-ubuntu with Paddle…   0
paddleocrce/vgg16_dist                                                                0
sunway513/paddleocr                   This repo host the private the staging docke…   0
paddleocrce/paddle                                                                    0
paddleocr/paddlecloud                                                                 0
paddleocr/recordiodataset                                                             0
tianshuo78520a/paddleocr                                                              0
paddleocr/paddleocr_cpu_ubuntu16                                                   0
paddleocr/pfsserver                                                                   0
paddleocr/models                                                                      0
paddleocr/paddle-tutorial                                                             0
nguyenthuan/paddleocr.org                                                             0
```