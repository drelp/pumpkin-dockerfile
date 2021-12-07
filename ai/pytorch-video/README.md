```shell script
sudo docker build -t pumpkin-video:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-video-notebook:1.0 -f ./Dockerfile.lab .

sudo docker build -t pumpkin-video-notebook:1.0 --no-cache -f ./Dockerfile.lab .

sudo docker build -t pumpkin-video:1.0 -f ./Dockerfile1 .
sudo docker run -it --rm pumpkin-video:1.0 bash

sudo docker tag pumpkin-video:1.0 yiluxiangbei/pumpkin-video:1.0
sudo docker push yiluxiangbei/pumpkin-video:1.0

sudo docker tag pumpkin-video:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video:1.0

sudo docker tag pumpkin-video-notebook:1.0 yiluxiangbei/pumpkin-video-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-video-notebook:1.0

sudo docker tag pumpkin-video-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video-notebook:1.0

python track.py --source '/dataset/2447771_427e1d0294940aa26bb0037cab09e154_1.mp4' --save-vid
python track.py --source 'k3008u2szwb.mp4' --save-vid

docker rmi `docker images | grep none | awk '{print $3}'`

docker pull guruzoa/yolov5_deepsort
```

```
pip install cv2
pip install opencv-python

pip uninstall opencv-python
pip install opencv-python-headless
pip install opencv-python-headless -i https://mirrors.aliyun.com/pypi/simple/

Downloading https://github.com/ultralytics/yolov5/releases/download/v6.0/yolov5l.pt to yolov5l.pt...
100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 89.2M/89.2M [00:10<00:00, 9.04MB/s]
```