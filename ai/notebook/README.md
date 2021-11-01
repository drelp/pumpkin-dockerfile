```
sudo docker build .

docker build --no-cache -t pumpkin-notebook:1.0 -f ./Dockerfile .
```

```
允许 jupyter 监听所有端口

--ip=0.0.0.0
允许用户以 root 身份运行

--allow-root
设置工作目录为/code，平台会将算法挂载到该目录下

--notebook-dir='/code'
设置 port 为 8888

--port=8888
关闭 token 认证

--LabApp.token=''
允许所有源访问

--LabApp.allow_origin='*'
设置 base URL，使用环境变量 OCTOPUS_JPY_BASE_URL 设置 base URL

--LabApp.base_url=$OCTOPUS_JPY_BASE_URL
notebook 运行后会将算法、数据集分别挂载到/code、/dataset 目录，因此制作的镜像需要不占用/code、/dataset 目录
```