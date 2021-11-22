FROM yiluxiangbei/pumpkin-paddlepaddle:1.0
RUN pip install "paddleocr>=2.0.1"
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/det/ch
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/rec/ch
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/cls
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/det/ch https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/rec/ch https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar
RUN wget -P /root/.paddleocr/2.3.0.2/ocr/cls https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
RUN cd /root/.paddleocr/2.3.0.2/ocr/det/ch & tar -xvf ch_PP-OCRv2_det_infer.tar
RUN cd /root/.paddleocr/2.3.0.2/ocr/rec/ch & tar -xvf ch_PP-OCRv2_rec_infer.tar
RUN cd /root/.paddleocr/2.3.0.2/ocr/cls & tar -xvf ch_ppocr_mobile_v2.0_cls_infer.tar
