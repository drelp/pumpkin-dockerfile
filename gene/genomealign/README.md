```shell script
docker commit -a "Gene Pumpkin" -m "centos gene" 77d5c24a63c2 centos-gene:genomealign

sudo docker tag centos-gene:genomealign yiluxiangbei/pumpkin-gene-genomealign:1.0
sudo docker push yiluxiangbei/pumpkin-gene-genomealign:1.0

sudo docker tag centos-gene:genomealign registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gene-genomealign:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gene-genomealign:1.0

sudo docker build -t pumpkin-genomealign-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-genomealign-notebook:1.0 yiluxiangbei/pumpkin-genomealign-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-genomealign-notebook:1.0

sudo docker tag pumpkin-genomealign-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-genomealign-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-genomealign-notebook:1.0
```

```
# 以下使用http代理
git config --global http.proxy http://127.0.0.1:1080
git config --global https.proxy https://127.0.0.1:1080

# 以下使用socks5代理
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080

# 取消代理
git config --global --unset http.proxy
git config --global --unset https.proxy
```