```shell script
sudo docker build -t pumpkin-paddleocr:1.0 -f ./Dockerfile .
sudo docker build -t pumpkin-paddleocr-notebook:1.0 -f ./Dockerfile.lab .

sudo docker tag pumpkin-paddleocr:1.0 yiluxiangbei/pumpkin-paddleocr:1.0
sudo docker push yiluxiangbei/pumpkin-paddleocr:1.0

sudo docker tag pumpkin-paddleocr:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr:1.0

sudo docker tag pumpkin-paddleocr-notebook:1.0 yiluxiangbei/pumpkin-paddleocr-notebook:1.0
sudo docker push yiluxiangbei/pumpkin-paddleocr-notebook:1.0

sudo docker tag pumpkin-paddleocr-notebook:1.0 registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr-notebook:1.0
sudo docker push registry.cn-beijing.aliyuncs.com/luomor/pumpkin-paddleocr-notebook:1.0

python -m pip install "paddleocr>=2.0.1" -i https://mirror.baidu.com/pypi/simple

paddleocr --image_dir /dataset/0002514084.jpg --use_angle_cls true --use_gpu false
paddleocr --image_dir /dataset/0002514084.jpg --use_angle_cls true --use_gpu false --type=structure

pip install -U https://paddleocr.bj.bcebos.com/whl/layoutparser-0.0.0-py3-none-any.whl

# --rec_image_shape --cls_image_shape

https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_server_v2.0_det_infer.tar
https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_server_v2.0_rec_infer.tar

#download https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar to /root/.paddleocr/2.3.0.2/ocr/det/ch/ch_PP-OCRv2_det_infer/ch_PP-OCRv2_det_infer.tar
#download https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar to /root/.paddleocr/2.3.0.2/ocr/rec/ch/ch_PP-OCRv2_rec_infer/ch_PP-OCRv2_rec_infer.tar
#download https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar to /root/.paddleocr/2.3.0.2/ocr/cls/ch_ppocr_mobile_v2.0_cls_infer/ch_ppocr_mobile_v2.0_cls_infer.tar

docker rmi $(docker images | grep "<none>" | awk "{print \$3}")
docker rmi `docker images | grep none | awk '{print $3}'`
```

```shell script
语种	缩写		语种	缩写		语种	缩写
中文	ch		法文	fr		日文	japan
英文	en		德文	german		韩文	korean
繁体中文	chinese_cht		意大利文	it		俄罗斯文	ru
```

```
docker search paddleocr
NAME                                     DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
paddleocr/paddle                      PArallel Distributed Deep LEarning              67
paddleocr/book                                                                        6
paddleocr/paddle_manylinux_devel                                                      5
paddleocr/deep_speech                                                                 3
paddleocr/paddle-lite                                                                 2
paddleocr/edl-example                                                                 0
paddleocr/paddleocr.org            Docker image for paddleocr.org project.      0
paddleocr/paddlefl                    Privacy-Preserving Deep Learning Package Bas…   0
paddleocrce/fluid_benchmark                                                           0
paddleocr/paddlecloud-job                                                             0
paddleocr/serving                                                                     0
paddleocr/centos6u3-capi                                                              0
paddleocr/cloud                       PaddlePaddleCloud Docker Image                  0                    [OK]
avoli/paddleocr-gpu                   Base on 10.0-cudnn7-devel-ubuntu with Paddle…   0
paddleocrce/vgg16_dist                                                                0
sunway513/paddleocr                   This repo host the private the staging docke…   0
paddleocrce/paddle                                                                    0
paddleocr/paddlecloud                                                                 0
paddleocr/recordiodataset                                                             0
tianshuo78520a/paddleocr                                                              0
paddleocr/paddleocr_cpu_ubuntu16                                                   0
paddleocr/pfsserver                                                                   0
paddleocr/models                                                                      0
paddleocr/paddle-tutorial                                                             0
nguyenthuan/paddleocr.org                                                             0
```

```
paddleocr -h
grep: warning: GREP_OPTIONS is deprecated; please use an alias or script
usage: paddleocr [-h] [--use_gpu USE_GPU] [--ir_optim IR_OPTIM] [--use_tensorrt USE_TENSORRT]
                 [--min_subgraph_size MIN_SUBGRAPH_SIZE] [--precision PRECISION] [--gpu_mem GPU_MEM]
                 [--image_dir IMAGE_DIR] [--det_algorithm DET_ALGORITHM] [--det_model_dir DET_MODEL_DIR]
                 [--det_limit_side_len DET_LIMIT_SIDE_LEN] [--det_limit_type DET_LIMIT_TYPE]
                 [--det_db_thresh DET_DB_THRESH] [--det_db_box_thresh DET_DB_BOX_THRESH]
                 [--det_db_unclip_ratio DET_DB_UNCLIP_RATIO] [--max_batch_size MAX_BATCH_SIZE]
                 [--use_dilation USE_DILATION] [--det_db_score_mode DET_DB_SCORE_MODE]
                 [--det_east_score_thresh DET_EAST_SCORE_THRESH] [--det_east_cover_thresh DET_EAST_COVER_THRESH]
                 [--det_east_nms_thresh DET_EAST_NMS_THRESH] [--det_sast_score_thresh DET_SAST_SCORE_THRESH]
                 [--det_sast_nms_thresh DET_SAST_NMS_THRESH] [--det_sast_polygon DET_SAST_POLYGON]
                 [--det_pse_thresh DET_PSE_THRESH] [--det_pse_box_thresh DET_PSE_BOX_THRESH]
                 [--det_pse_min_area DET_PSE_MIN_AREA] [--det_pse_box_type DET_PSE_BOX_TYPE]
                 [--det_pse_scale DET_PSE_SCALE] [--rec_algorithm REC_ALGORITHM] [--rec_model_dir REC_MODEL_DIR]
                 [--rec_image_shape REC_IMAGE_SHAPE] [--rec_batch_num REC_BATCH_NUM]
                 [--max_text_length MAX_TEXT_LENGTH] [--rec_char_dict_path REC_CHAR_DICT_PATH]
                 [--use_space_char USE_SPACE_CHAR] [--vis_font_path VIS_FONT_PATH] [--drop_score DROP_SCORE]
                 [--e2e_algorithm E2E_ALGORITHM] [--e2e_model_dir E2E_MODEL_DIR]
                 [--e2e_limit_side_len E2E_LIMIT_SIDE_LEN] [--e2e_limit_type E2E_LIMIT_TYPE]
                 [--e2e_pgnet_score_thresh E2E_PGNET_SCORE_THRESH] [--e2e_char_dict_path E2E_CHAR_DICT_PATH]
                 [--e2e_pgnet_valid_set E2E_PGNET_VALID_SET] [--e2e_pgnet_polygon E2E_PGNET_POLYGON]
                 [--e2e_pgnet_mode E2E_PGNET_MODE] [--use_angle_cls USE_ANGLE_CLS] [--cls_model_dir CLS_MODEL_DIR]
                 [--cls_image_shape CLS_IMAGE_SHAPE] [--label_list LABEL_LIST] [--cls_batch_num CLS_BATCH_NUM]
                 [--cls_thresh CLS_THRESH] [--enable_mkldnn ENABLE_MKLDNN] [--cpu_threads CPU_THREADS]
                 [--use_pdserving USE_PDSERVING] [--warmup WARMUP] [--use_mp USE_MP]
                 [--total_process_num TOTAL_PROCESS_NUM] [--process_id PROCESS_ID] [--benchmark BENCHMARK]
                 [--save_log_path SAVE_LOG_PATH] [--show_log SHOW_LOG] [--use_onnx USE_ONNX] [--output OUTPUT]
                 [--table_max_len TABLE_MAX_LEN] [--table_model_dir TABLE_MODEL_DIR]
                 [--table_char_type TABLE_CHAR_TYPE] [--table_char_dict_path TABLE_CHAR_DICT_PATH]
                 [--layout_path_model LAYOUT_PATH_MODEL] [--lang LANG] [--det DET] [--rec REC] [--type TYPE]
                 [--ocr_version OCR_VERSION] [--structure_version STRUCTURE_VERSION]

optional arguments:
  -h, --help            show this help message and exit
  --use_gpu USE_GPU
  --ir_optim IR_OPTIM
  --use_tensorrt USE_TENSORRT
  --min_subgraph_size MIN_SUBGRAPH_SIZE
  --precision PRECISION
  --gpu_mem GPU_MEM
  --image_dir IMAGE_DIR
  --det_algorithm DET_ALGORITHM
  --det_model_dir DET_MODEL_DIR
  --det_limit_side_len DET_LIMIT_SIDE_LEN
  --det_limit_type DET_LIMIT_TYPE
  --det_db_thresh DET_DB_THRESH
  --det_db_box_thresh DET_DB_BOX_THRESH
  --det_db_unclip_ratio DET_DB_UNCLIP_RATIO
  --max_batch_size MAX_BATCH_SIZE
  --use_dilation USE_DILATION
  --det_db_score_mode DET_DB_SCORE_MODE
  --det_east_score_thresh DET_EAST_SCORE_THRESH
  --det_east_cover_thresh DET_EAST_COVER_THRESH
  --det_east_nms_thresh DET_EAST_NMS_THRESH
  --det_sast_score_thresh DET_SAST_SCORE_THRESH
  --det_sast_nms_thresh DET_SAST_NMS_THRESH
  --det_sast_polygon DET_SAST_POLYGON
  --det_pse_thresh DET_PSE_THRESH
  --det_pse_box_thresh DET_PSE_BOX_THRESH
  --det_pse_min_area DET_PSE_MIN_AREA
  --det_pse_box_type DET_PSE_BOX_TYPE
  --det_pse_scale DET_PSE_SCALE
  --rec_algorithm REC_ALGORITHM
  --rec_model_dir REC_MODEL_DIR
  --rec_image_shape REC_IMAGE_SHAPE
  --rec_batch_num REC_BATCH_NUM
  --max_text_length MAX_TEXT_LENGTH
  --rec_char_dict_path REC_CHAR_DICT_PATH
  --use_space_char USE_SPACE_CHAR
  --vis_font_path VIS_FONT_PATH
  --drop_score DROP_SCORE
  --e2e_algorithm E2E_ALGORITHM
  --e2e_model_dir E2E_MODEL_DIR
  --e2e_limit_side_len E2E_LIMIT_SIDE_LEN
  --e2e_limit_type E2E_LIMIT_TYPE
  --e2e_pgnet_score_thresh E2E_PGNET_SCORE_THRESH
  --e2e_char_dict_path E2E_CHAR_DICT_PATH
  --e2e_pgnet_valid_set E2E_PGNET_VALID_SET
  --e2e_pgnet_polygon E2E_PGNET_POLYGON
  --e2e_pgnet_mode E2E_PGNET_MODE
  --use_angle_cls USE_ANGLE_CLS
  --cls_model_dir CLS_MODEL_DIR
  --cls_image_shape CLS_IMAGE_SHAPE
  --label_list LABEL_LIST
  --cls_batch_num CLS_BATCH_NUM
  --cls_thresh CLS_THRESH
  --enable_mkldnn ENABLE_MKLDNN
  --cpu_threads CPU_THREADS
  --use_pdserving USE_PDSERVING
  --warmup WARMUP
  --use_mp USE_MP
  --total_process_num TOTAL_PROCESS_NUM
  --process_id PROCESS_ID
  --benchmark BENCHMARK
  --save_log_path SAVE_LOG_PATH
  --show_log SHOW_LOG
  --use_onnx USE_ONNX
  --output OUTPUT
  --table_max_len TABLE_MAX_LEN
  --table_model_dir TABLE_MODEL_DIR
  --table_char_type TABLE_CHAR_TYPE
  --table_char_dict_path TABLE_CHAR_DICT_PATH
  --layout_path_model LAYOUT_PATH_MODEL
  --lang LANG
  --det DET
  --rec REC
  --type TYPE
  --ocr_version OCR_VERSION
                        OCR Model version, the current model support list is as follows: 1. PP-OCRv2 Support Chinese
                        detection and recognition model. 2. PP-OCR support Chinese detection, recognition and direction
                        classifier and multilingual recognition model.
  --structure_version STRUCTURE_VERSION
                        Model version, the current model support list is as follows: 1. STRUCTURE Support en table
                        structure model.
```