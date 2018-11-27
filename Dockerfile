FROM diuis/docker-emsdk-opencv

USER root
RUN mkdir /opencv_wasm && chown appuser /opencv_wasm

USER appuser
RUN source /emsdk/emsdk_env.sh && \
    python /opencv/opencv-4.0.0/platforms/js/build_js.py /opencv_wasm/ --build_wasm
