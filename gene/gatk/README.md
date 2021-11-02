```shell script
docker pull broadinstitute/gatk
docker images
docker run -it broadinstitute/gatk
./gatk --list

sudo docker build .

docker build -t pumpkin-gatk-notebook:1.0 -f ./Dockerfile .
docker build --no-cache -t pumpkin-gatk-notebook:1.0 -f ./Dockerfile .
docker save -o pumpkin-gatk-notebook.zip pumpkin-gatk-notebook:1.0

mkdir -p /home/gene/web/gene-bg/webroot
cp pumpkin-gatk-notebook.zip /home/gene/web/gene-bg/webroot

docker build -f /home/jupyter-dockerfile -t detectron2-base-notebook:v1.0 .
docker save -o detectron2-base-notebook.zip detectron2-base-notebook:v1.0
```