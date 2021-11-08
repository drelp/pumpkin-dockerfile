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

sudo docker tag broadinstitute/gatk:latest yiluxiangbei/pumpkin-gatk:1.0
sudo docker push yiluxiangbei/pumpkin-gatk:1.0

sudo docker tag broadinstitute/gatk:latest registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gatk:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-gatk:1.0

mkdir -p /home/gene/web/gene-bg/webroot
cp pumpkin-gatk-notebook.zip /home/gene/web/gene-bg/webroot

sudo docker pull registry.docker-cn.com/broadinstitute/gatk:latest
sudo docker pull registry.docker-cn.com/library/python:2.7
sudo docker pull registry.docker-cn.com/broadinstitute/genomes-in-the-cloud:2.3.1-1512499786

docker start 154e0c1fe225
docker exec -it 154e0c1fe225 bash
gatk --java-options "-Xmx8G" HaplotypeCaller -R reference.fasta -I input.bam -O output.vcf
gatk ValidateSamFile  -I input.bam -MODE SUMMARY

./gatk PrintReads -I gatk-master/src/test/resources/NA12878.chr17_69k_70k.dictFix.bam -O output.bam

mkdir /model
./gatk PrintReads -I /code/gatk-master/src/test/resources/NA12878.chr17_69k_70k.dictFix.bam -O /model/output.bam

task
/gatk/gatk PrintReads -I /code/gatk-master/src/test/resources/NA12878.chr17_69k_70k.dictFix.bam -O /model/output.bam
ping 172.10.173.30

/gatk/gatk PrintReads -I /code/gatk-master/src/test/resources/NA12878.chr17_69k_70k.dictFix.bam -O /model/output.bam 2>&1 | tee /var/log/gatk.log

sudo docker build -f /home/jupyter-dockerfile -t detectron2-base-notebook:v1.0 .
sudo docker save -o detectron2-base-notebook.zip detectron2-base-notebook:v1.0

volcano
```

```shell script
# ubuntu
docker pull python:2.7
docker run -it python:2.7 bash
apt-get update
apt-get install vim
useradd gene
mkdir /home/gene
apt-get install sudo
sudo apt-get install python-setuptools
pip install --upgrade pip
python setup.py install

docker pull python:3.7
docker run -it python:3.7 bash
apt-get update
apt-get install vim
useradd gene
mkdir /home/gene
cd /home/gene/
apt-get install sudo
sudo apt-get install python3-setuptools
pip install --upgrade pip
python setup.py install
pip uninstall pyparsing
pip install pyparsing==2.0.3
pip install pyparsing==2.2.1
matplotlib 3.5.0rc1 requires pyparsing>=2.2.1, but you have pyparsing 2.0.3 which is incompatible.

docker start 9db9d522ab52
docker commit 9db9d522ab52 yiluxiangbei/python:3.7-ribotish
sudo docker push yiluxiangbei/python:3.7-ribotish

sudo docker tag yiluxiangbei/python:3.7-ribotish registry.cn-beijing.aliyuncs.com/luomor/python:3.7-ribotish
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/python:3.7-ribotish
```

```
https://gatk.broadinstitute.org/hc/en-us/articles/360036194592-Getting-started-with-GATK4
https://app.terra.bio/#library/showcase
https://app.terra.bio/#workspaces/tidal-waves/Peat-Demo
https://gatk.broadinstitute.org/hc/en-us/articles/360035889771-Pipelining-GATK-with-WDL-and-Cromwell
https://gatk.broadinstitute.org/hc/en-us/articles/360035535912

input.bam
https://www.jianshu.com/p/a10876c7fd81
```

```
https://www.zxzyl.com/archives/869
https://github.com/gatk-workflows/gatk4-data-processing
https://gatk.broadinstitute.org/hc/en-us/articles/360035535912
https://github.com/deeplearning2012/cromwell

https://github.com/broadinstitute/cromwell/releases/download/70/cromwell-70.jar
https://github.com/broadinstitute/cromwell/releases/download/70/womtool-70.jar

https://github-releases.githubusercontent.com/34136406/07a246fd-b5c9-4df3-a659-dbf7ff64faad?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20211103%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211103T022336Z&X-Amz-Expires=300&X-Amz-Signature=80fe2f73b3d4b59a61a15c111eb7d1a7ceb597600cd26a23cc4d70fa3dfc281d&X-Amz-SignedHeaders=host&actor_id=831839&key_id=0&repo_id=34136406&response-content-disposition=attachment%3B%20filename%3Dcromwell-70.jar&response-content-type=application%2Foctet-stream
https://github-releases.githubusercontent.com/34136406/859ffd47-8de7-4c7d-995f-add1824dacb5?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20211103%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211103T022409Z&X-Amz-Expires=300&X-Amz-Signature=53e45c385aa4a67f0d342bec8abc6afc223f2259a3ebdbdbfe0fdabff2d385f4&X-Amz-SignedHeaders=host&actor_id=831839&key_id=0&repo_id=34136406&response-content-disposition=attachment%3B%20filename%3Dwomtool-70.jar&response-content-type=application%2Foctet-stream
```