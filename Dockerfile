FROM ubuntu:latest

# These settings prevent a timezone prompt when Python installs
ENV TZ=US/Pacific \
    DEBIAN_FRONTEND=noninteractive

# Update the apt repo
RUN apt-get update

# Install system pre-requisites
# RUN apt install -y git-all

# Install pre-requisites for Python
RUN apt-get install -y \
    software-properties-common

# Install the latest 3.x version of Python available from apt
# RUN apt-get install -y python3 python3-pip python3-ipykernel
RUN apt-get install -y python3 \
    python3-pip \
    python3-ipykernel \
    libopencv-dev \
    python3-opencv \
    curl \
    git-all

# Install tensorflow. Note that AWS manages Linux distributions
RUN pip3 install tensorflow-cpu-aws \
    pyyaml \
    h5py \
    pandas \
    scikit-learn \
    tensorflow \
    statsmodels \
    stats

# Configure git
RUN git config --global user.name "Bill.Raymond" &&\
    git config --global user.email bill.raymond@cambermast.com &&\
    git config --global init.defaultBranch main
