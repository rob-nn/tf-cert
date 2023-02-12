FROM ubuntu:22.04

ARG CONDA_INSTALL_FILE=Anaconda3-2022.10-Linux-x86_64.sh
ARG CONDA_DIR=/opt/conda
RUN apt update && apt install -y htop vim curl
RUN curl https://repo.anaconda.com/archive/$CONDA_INSTALL_FILE --output $CONDA_INSTALL_FILE
RUN bash $CONDA_INSTALL_FILE -b -p $CONDA_DIR
RUN rm $CONDA_INSTALL_FILE
ENV PATH=${CONDA_DIR}:${CONDA_DIR}/bin:$PATH
RUN apt install -y build-essential
RUN pip install jupyter jupyterlab tensorflow
WORKDIR /app
CMD ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]
