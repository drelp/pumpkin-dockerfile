```
yum search openjdk
sudo yum install java-11-openjdk-devel

sudo /usr/sbin/alternatives --config java

*+ 1           java-1.8.0-openjdk.x86_64 (/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.302.b08-0.el7_9.x86_64/jre/bin/java)
   2           java-11-openjdk.x86_64 (/usr/lib/jvm/java-11-openjdk-11.0.13.0.8-1.el7_9.x86_64/bin/java)

/usr/sbin/alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-openjdk-11.0.13.0.8-1.el7_9.x86_64/bin/java 2

java -jar cromwell-70.jar server
```

```
http://10.50.10.20:8000/
```