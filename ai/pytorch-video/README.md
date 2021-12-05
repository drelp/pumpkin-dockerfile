```shell script
sudo docker build -t pumpkin-video:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-video-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-video:1.0 yiluxiangbei/pumpkin-video:1.0
sudo docker push yiluxiangbei/pumpkin-video:1.0

sudo docker tag pumpkin-video:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video:1.0

sudo docker tag pumpkin-video-notebook:1.0 yiluxiangbei/pumpkin-video-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-video-notebook:1.0

sudo docker tag pumpkin-video-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-video-notebook:1.0
```

```

```