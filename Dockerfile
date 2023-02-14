ARG version
FROM tensorflow/tensorflow:$version

RUN apt update && apt install -y htop vim curl build-essential

RUN pip install jupyter jupyterlab pillow scipy

RUN mkdir -p /root/.jupyter

#password 123456
COPY jupyter_notebook_config.json /root/.jupyter

WORKDIR /app

CMD ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]
