FROM tensorflow/tensorflow:latest-gpu

ARG CONDA_INSTALL_FILE=Anaconda3-2022.10-Linux-x86_64.sh

RUN apt update && apt install -y htop vim curl build-essential

RUN pip install jupyter jupyterlab

WORKDIR /app

CMD ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]
