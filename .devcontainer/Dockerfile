FROM nvcr.io/nvidia/cuda:12.1.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install Python 3.10 and other necessary dependencies
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    python3.10 \
    python3.10-dev \
    python3.10-distutils \
    python3-pip \
    python3.10-venv \
    libgl1-mesa-glx \
    libglib2.0-0 \
    git \
    unzip \
    tar \
    htop \
    qt5-qmake \
    qtbase5-dev \
    xvfb \
    python3-tk \ 
    imagemagick \
    && rm -rf /var/lib/apt/lists/* && apt-get clean

# Set Python 3.10 as the default python version
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1 && update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1 && update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Create and activate a virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN echo 'source /opt/venv/bin/activate' >> ~/.bashrc

# Nvidia env vars
ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

COPY install.sh .

# Make the script executable (if necessary)
RUN chmod +x install.sh

# Run the script in a single RUN statement to ensure environment variables are set correctly
RUN . ./install.sh

# download checkpoint
RUN mkdir /ckpt
RUN curl -L https://huggingface.co/facebook/VGGSfM/resolve/main/vggsfm_v2_0_0.bin -o /ckpt/vggsfm_v2_0_0.bin
