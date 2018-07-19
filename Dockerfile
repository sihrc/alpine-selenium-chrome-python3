FROM alpine

LABEL author="Chris Lee"
LABEL email="sihrc.c.lee@gmail.com"

RUN apk update && \
    apk add --no-cache build-base \
        python3-dev \
        python3 \
        libc-dev \
        libffi-dev \
        chromium \
        chromium-chromedriver
        bash && \
    python3 -m ensurepip && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    pip3 install --upgrade pip wheel selenium && \
    rm -r /root/.cache

CMD ["bash"]
