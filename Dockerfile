FROM continuumio/miniconda:latest
MAINTAINER Ricardo R. da Silva <ridasilva@usp.br>

ENV INSTALL_PATH /home/static_flask
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY environment.yml environment.yml
RUN conda env create -f environment.yml
RUN echo "source activate static_flask" > ~/.bashrc
ENV PATH /opt/conda/envs/static_flask/bin:$PATH


COPY . /home/static_flask

ENV FLASK_APP app.py 

EXPOSE 5010
CMD sh /home/static_flask/run_server.sh 
