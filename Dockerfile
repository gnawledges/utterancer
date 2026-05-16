FROM pytorch/pytorch:2.12.0-cuda13.0-cudnn9-devel

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    git \
    libsndfile1 \
    tmux && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    git config --global --add safe.directory /workspace

WORKDIR /workspace

COPY requirements.txt /tmp/requirements.txt
RUN pip install --break-system-packages --no-cache-dir -r /tmp/requirements.txt
