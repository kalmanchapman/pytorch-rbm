FROM pytorch/pytorch:latest

RUN conda install -y numpy scipy pip
RUN pip install scikit-learn pandas jupyter jupyter_kernel_gateway ptipython matplotlib seaborn tqdm memory-profiler

WORKDIR /app
COPY . /app

CMD /bin/bash
