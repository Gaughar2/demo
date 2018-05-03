FROM trestletech/plumber
RUN mkdir -p \app\
WORKDIR \app\
COPY deploy_demo_test2.R \app\
COPY Demo_Model2.RData \app\
CMD ["\app\deploy_demo_test2.R"]
