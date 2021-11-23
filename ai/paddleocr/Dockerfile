FROM yiluxiangbei/pumpkin-paddlepaddle:1.0
RUN pip install "paddleocr>=2.0.1"
RUN pip install -U https://paddleocr.bj.bcebos.com/whl/layoutparser-0.0.0-py3-none-any.whl
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/det/ch
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/rec/ch
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/cls
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/table
RUN mkdir -p /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet/ppyolov2_r50vd_dcn_365e_publaynet_infer

RUN wget -P /root/.paddleocr/2.3.0.2/ocr/det/ch https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/rec/ch https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/cls https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/table https://paddleocr.bj.bcebos.com/dygraph_v2.0/table/en_ppocr_mobile_v2.0_table_structure_infer.tar
RUN wget -P /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet https://paddle-model-ecology.bj.bcebos.com/model/layout-parser/ppyolov2_r50vd_dcn_365e_publaynet.tar

RUN tar -xvf /root/.paddleocr/2.3.0.2/ocr/det/ch/ch_PP-OCRv2_det_infer.tar -C /root/.paddleocr/2.3.0.2/ocr/det/ch
RUN tar -xvf /root/.paddleocr/2.3.0.2/ocr/rec/ch/ch_PP-OCRv2_rec_infer.tar -C /root/.paddleocr/2.3.0.2/ocr/rec/ch
RUN tar -xvf /root/.paddleocr/2.3.0.2/ocr/cls/ch_ppocr_mobile_v2.0_cls_infer.tar -C /root/.paddleocr/2.3.0.2/ocr/cls
RUN tar -xvf /root/.paddleocr/2.3.0.2/ocr/table/en_ppocr_mobile_v2.0_table_structure_infer.tar -C /root/.paddleocr/2.3.0.2/ocr/table
# /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet/ppyolov2_r50vd_dcn_365e_publaynet_infer
RUN tar -xvf /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet/ppyolov2_r50vd_dcn_365e_publaynet.tar -C /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet
RUN mv /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet/ppyolov2_r50vd_dcn_365e_publaynet/* /root/.paddledet/inference_model/ppyolov2_r50vd_dcn_365e_publaynet/ppyolov2_r50vd_dcn_365e_publaynet_infer

RUN mkdir /usr/share/fonts/chinese
COPY chinese /usr/share/fonts/chinese
COPY fonts.conf /etc/fonts/fonts.conf