```shell script
sudo docker build -t pumpkin-video:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-video-notebook:1.0 -f ./Dockerfile.lab .

sudo docker build -t pumpkin-video-notebook:1.0 --no-cache -f ./Dockerfile.lab .

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
```

```
pip install cv2
pip install opencv-python

pip uninstall opencv-python
pip install opencv-python-headless
pip install opencv-python-headless -i https://mirrors.aliyun.com/pypi/simple/
```