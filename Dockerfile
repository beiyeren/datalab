FROM gcr.io/cloud-datalab/datalab:latest
#RUN pip --no-cache-dir install keras tflearn prettytensor tensorflow-transform h5py
WORKDIR /
#CMD mkdir /root/.ipython/profile_default
#COPY ipython_config.py /root/.ipython/profile_default/
COPY run.sh /datalab/run.sh
ENV ENABLE_USAGE_REPORTING=false
ENTRYPOINT ["/datalab/run.sh"]
#CMD ["/run_jupyter.sh", "--allow-root"]
