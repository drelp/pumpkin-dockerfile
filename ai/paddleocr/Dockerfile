FROM yiluxiangbei/pumpkin-paddlepaddle:1.0
RUN pip install "paddleocr>=2.0.1"
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/det/ch/ch_PP-OCRv2_det_infer
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/rec/ch/ch_PP-OCRv2_rec_infer
RUN mkdir -p /root/.paddleocr/2.3.0.2/ocr/cls/ch_ppocr_mobile_v2.0_cls_infer
RUN cd /root/.paddleocr/2.3.0.2/ocr/det/ch/ch_PP-OCRv2_det_infer
RUN wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar
RUN cd /root/.paddleocr/2.3.0.2/ocr/rec/ch/ch_PP-OCRv2_rec_infer
RUN wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar
RUN cd /root/.paddleocr/2.3.0.2/ocr/cls/ch_ppocr_mobile_v2.0_cls_infer
RUN wget https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
