FROM jupyter/all-spark-notebook:58169ec3cfd3

RUN pip install --no-cache-dir vdom==0.5

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}