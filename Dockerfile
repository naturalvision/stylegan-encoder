FROM tensorflow/tensorflow:1.15.0-gpu-py3
ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex \
    && apt update -q \
    && apt install -qy cmake libdlib-dev libopencv-dev

RUN set -ex \
    && pip install -U pip \
    && pip install \
        dlib==19.19.0 \
        joblib \
        opencv-python \
        Pillow==6.2.1 \
        requests==2.22.0 \
        scipy==1.3.3

RUN set -ex \
    && pip install \
        tqdm==4.49.0 \
        keras==2.3.1 \
        imutils==0.5.3
