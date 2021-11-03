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

https://github.com/broadinstitute/cromwell/releases/download/70/cromwell-70.jar
https://github.com/broadinstitute/cromwell/releases/download/70/womtool-70.jar

https://github-releases.githubusercontent.com/34136406/07a246fd-b5c9-4df3-a659-dbf7ff64faad?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20211103%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211103T022336Z&X-Amz-Expires=300&X-Amz-Signature=80fe2f73b3d4b59a61a15c111eb7d1a7ceb597600cd26a23cc4d70fa3dfc281d&X-Amz-SignedHeaders=host&actor_id=831839&key_id=0&repo_id=34136406&response-content-disposition=attachment%3B%20filename%3Dcromwell-70.jar&response-content-type=application%2Foctet-stream
https://github-releases.githubusercontent.com/34136406/859ffd47-8de7-4c7d-995f-add1824dacb5?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20211103%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211103T022409Z&X-Amz-Expires=300&X-Amz-Signature=53e45c385aa4a67f0d342bec8abc6afc223f2259a3ebdbdbfe0fdabff2d385f4&X-Amz-SignedHeaders=host&actor_id=831839&key_id=0&repo_id=34136406&response-content-disposition=attachment%3B%20filename%3Dwomtool-70.jar&response-content-type=application%2Foctet-stream
```

```
java -jar ~/Downloads/womtool-70.jar --help
womtool 70
Usage: java -jar womtool.jar [validate|inputs|outputs|parse|highlight|graph|upgrade|womgraph] [options] workflow-source

  workflow-source          Path to workflow file.
  -i, --inputs <value>     Workflow inputs file.
  -h, --highlight-mode <value>
                           Highlighting mode, one of 'html', 'console' (used only with 'highlight' command)
  -o, --optional-inputs <value>
                           If set, optional inputs are also included in the inputs set. Default is 'true' (used only with the inputs command)
  -l, --list-dependencies  An optional flag to list files referenced in import statements (used only with 'validate' command)
  --help
  --version

Command: validate
Validate a workflow source file. If inputs are provided then 'validate' also checks that the inputs file is a valid set of inputs for the workflow.

Command: inputs
Generate and output a new inputs JSON for this workflow.

Command: outputs
Generate and output a list of output types in JSON for this workflow.

Command: parse
(Deprecated; WDL draft 2 only) Print out the Hermes parser's abstract syntax tree for the source file.

Command: highlight
(Deprecated; WDL draft 2 only) Print out the Hermes parser's abstract syntax tree for the source file. Requires at least one of 'html' or 'console'

Command: graph
Generate and output a graph visualization of the workflow in .dot format

Command: upgrade
Automatically upgrade the WDL to version 1.0 and output the result.

Command: womgraph
(Advanced) Generate and output a graph visualization of Cromwell's internal Workflow Object Model structure for this workflow in .dot format
```

```
java -jar ~/Downloads/cromwell-70.jar --help
cromwell 70
Usage: java -jar /path/to/cromwell.jar [server|run|submit] [options] <args>...

  --help                   Cromwell - Workflow Execution Engine
  --version
Command: server
Starts a web server on port 8000.  See the web server documentation for more details about the API endpoints.
Command: run [options] workflow-source
Run the workflow and print out the outputs in JSON format.
  workflow-source          Workflow source file or workflow url.
  --workflow-root <value>  Workflow root.
  -i, --inputs <value>     Workflow inputs file.
  -o, --options <value>    Workflow options file.
  -t, --type <value>       Workflow type.
  -v, --type-version <value>
                           Workflow type version.
  -l, --labels <value>     Workflow labels file.
  -p, --imports <value>    A zip file to search for workflow imports.
  -m, --metadata-output <value>
                           An optional JSON file path to output metadata.
Command: submit [options] workflow-source
Submit the workflow to a Cromwell server.
  workflow-source          Workflow source file or workflow url.
  --workflow-root <value>  Workflow root.
  -i, --inputs <value>     Workflow inputs file.
  -o, --options <value>    Workflow options file.
  -t, --type <value>       Workflow type.
  -v, --type-version <value>
                           Workflow type version.
  -l, --labels <value>     Workflow labels file.
  -p, --imports <value>    A zip file to search for workflow imports.
  -h, --host <value>       Cromwell server URL.
```