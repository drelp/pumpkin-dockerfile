```shell script
sudo docker build -t pumpkin-gatk-test:1.0 -f ./Dockerfile .
```

```
https://gatk.broadinstitute.org/hc/en-us/articles/360035531892
```

```
/data/root/nfs_root/data/logger
```

The image is broadinstitute/gatk.

```
docker pull broadinstitute/gatk
```

see https://github.com/broadinstitute/gatk.


try this command
```
Run a tool: ./gatk PrintReads -I src/test/resources/NA12878.chr17_69k_70k.dictFix.bam -O output.bam
```