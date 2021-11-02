```shell script
sudo docker pull broadinstitute/gatk
sudo docker images
sudo docker run -it broadinstitute/gatk
./gatk --list

sudo docker build .

sudo docker build -t pumpkin-gatk-notebook:1.0 -f ./Dockerfile .
sudo docker build --no-cache -t pumpkin-gatk-notebook:1.0 -f ./Dockerfile .
sudo docker save -o pumpkin-gatk-notebook.zip pumpkin-gatk-notebook:1.0

sudo docker tag pumpkin-gatk-notebook:1.0 yiluxiangbei/pumpkin-gatk-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-gatk-notebook:1.0

sudo docker tag pumpkin-gatk-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gatk-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gatk-notebook:1.0

mkdir -p /home/gene/web/gene-bg/webroot
cp pumpkin-gatk-notebook.zip /home/gene/web/gene-bg/webroot

sudo docker pull registry.docker-cn.com/broadinstitute/gatk:latest
sudo docker pull registry.docker-cn.com/library/python:2.7
sudo docker pull registry.docker-cn.com/broadinstitute/genomes-in-the-cloud:2.3.1-1512499786

sudo docker build -f /home/jupyter-dockerfile -t detectron2-base-notebook:v1.0 .
sudo docker save -o detectron2-base-notebook.zip detectron2-base-notebook:v1.0
```

```
https://www.zxzyl.com/archives/869
https://github.com/gatk-workflows/gatk4-data-processing
https://gatk.broadinstitute.org/hc/en-us/articles/360035535912
https://github.com/deeplearning2012/cromwell
```