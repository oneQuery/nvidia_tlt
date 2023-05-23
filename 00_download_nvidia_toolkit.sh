#!bin/bash

conda create -n tao_python3.7 python=3.7
conda activate tao_python3.7

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
&& curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
&& curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update
sudo apt-get install -y nvidia-docker2

sudo systemctl restart docker
sudo docker run --rm --gpus all nvidia/cuda:11.7.1-base-ubuntu20.04 nvidia-smi