#version 1.0
task DoFastq2Ubam {
    File fastq1
    File fastq2
    String out_prefix
    Int split_to_n_files
    String sample_name
    String library_name
    String platform_unit
    String platform
    String sequencing_center
    String read_group_name
    String cluster_config
    Int data_disk_size
    Int mem_gb
    String local_output = "./outputs"
    command <<<
        set -o pipefail
        set -e
        #set env
        echo "fastq1: ${fastq1}"
        export FASTQ=${fastq1}
        export FASTQ2=${fastq2}
        export LIBRARY_NAME=${library_name}
        export OUT_PREFIX=${out_prefix}
        export PLATFORM=${platform}
        export PLATFORM_UNIT=${platform_unit}
        export READ_GROUP_NAME=${read_group_name}
        export SAMPLE_NAME=${sample_name}
        export SEQUENCING_CENTER=${sequencing_center}
        export SPLIT_TO_N_FILES=${split_to_n_files}
        mkdir -p ${local_output}
        TMP_DIR=/home/tmp
        OUTPUT_DIR=${local_output}
        GATK=/gatk/gatk.jar
        mkdir -p $TMP_DIR
        ARG_FASTQ2=
        if [[ -n "$FASTQ2" ]]; then
            ARG_FASTQ2="--FASTQ2=$FASTQ2"
        fi
        ARG_LIBRARY_NAME=
        if [[ -n "$LIBRARY_NAME" ]]; then
            ARG_LIBRARY_NAME="--LIBRARY_NAME=$LIBRARY_NAME"
        fi
        ARG_PLATFORM=
        if [[ -n "$PLATFORM" ]]; then
            ARG_PLATFORM="--PLATFORM=$PLATFORM"
        fi
        ARG_PLATFORM_MODEL=
        if [[ -n "$PLATFORM_MODEL" ]]; then
            ARG_PLATFORM_MODEL="--PLATFORM_MODEL=$PLATFORM_MODEL"
        fi
        ARG_PLATFORM_UNIT=
        if [[ -n "$PLATFORM_UNIT" ]]; then
            ARG_PLATFORM_UNIT="--PLATFORM_UNIT=$PLATFORM_UNIT"
        fi
        ARG_READ_GROUP_NAME=
        if [[ -n "$READ_GROUP_NAME" ]]; then
            ARG_READ_GROUP_NAME="--READ_GROUP_NAME=$READ_GROUP_NAME"
        fi
        ARG_SEQUENCING_CENTER=
        if [[ -n "$SEQUENCING_CENTER" ]]; then
            ARG_SEQUENCING_CENTER="--SEQUENCING_CENTER=$SEQUENCING_CENTER"
        fi
        ARG_RUN_DATE=
        if [[ -n "$RUN_DATE" ]]; then
            ARG_RUN_DATE="--RUN_DATE=$RUN_DATE"
        fi
        ARG_SPLIT_TO_N_FILES=
        if [[ -n "$SPLIT_TO_N_FILES" ]]; then
            ARG_SPLIT_TO_N_FILES="--SPLIT_TO_N_FILES=$SPLIT_TO_N_FILES"
        fi
        ARG_SPLIT_TO_N_READS=
        if [[ -n "$SPLIT_TO_N_READS" ]]; then
            ARG_SPLIT_TO_N_READS="--SPLIT_TO_N_READS=$SPLIT_TO_N_READS"
        fi
        OUTPUT_BAM=$OUTPUT_DIR/$OUT_PREFIX.bam
        if [[ -n "$SPLIT_TO_N_FILES" || -n "$SPLIT_TO_N_READS" ]]; then
            OUTPUT_BAM=$TMP_DIR/tmp.bam
        fi
        java -Xmx${mem_gb}G -jar $GATK FastqToSam \
        --FASTQ=$FASTQ \
        --OUTPUT=$OUTPUT_BAM \
        --SAMPLE_NAME=$SAMPLE_NAME \
        $ARG_FASTQ2 \
        $ARG_LIBRARY_NAME \
        $ARG_PLATFORM \
        $ARG_PLATFORM_MODEL \
        $ARG_PLATFORM_UNIT \
        $ARG_READ_GROUP_NAME \
        $ARG_SEQUENCING_CENTER \
        $ARG_RUN_DATE
        if [[ -n "$SPLIT_TO_N_FILES" || -n "$SPLIT_TO_N_READS" ]]; then
            UBAM_PREFIX=ubam_prefix #fix picard bug
            java -Xmx${mem_gb}G -jar $GATK SplitSamByNumberOfReads \
                --INPUT=$OUTPUT_BAM \
                --OUTPUT=$OUTPUT_DIR \
                $ARG_SPLIT_TO_N_FILES \
                $ARG_SPLIT_TO_N_READS \
                --OUT_PREFIX=$UBAM_PREFIX
            cd $OUTPUT_DIR
            rename "s/^$UBAM_PREFIX/$OUT_PREFIX/" *
        fi
    >>>
    runtime {
        docker: "registry.cn-zhangjiakou.aliyuncs.com/batchcompute-public/gatk:4.0.10.1"
    }
    output {
        Array[File] bam_file = glob("${local_output}/*.bam")
    }
}
# WORKFLOW DEFINITION
workflow Fastq2Ubam {
File fastq1
File fastq2
String out_prefix
Int split_to_n_files
String sample_name
String library_name
String platform_unit
String platform
String sequencing_center
String read_group_name
String cluster_config
Int data_disk_size
Int mem_gb
call DoFastq2Ubam {
input:
fastq1=fastq1,
fastq2=fastq2,
out_prefix=out_prefix,
split_to_n_files=split_to_n_files,
sample_name=sample_name,
library_name=library_name,
platform=platform,
platform_unit=platform_unit,
sequencing_center=sequencing_center,
read_group_name=read_group_name,
cluster_config=cluster_config,
data_disk_size=data_disk_size,
mem_gb=mem_gb
}
# Outputs that will be retained when execution is complete
output {
Array[File] bam_file = DoFastq2Ubam.bam_file
}
}