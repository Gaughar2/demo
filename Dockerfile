FROM trestletech/plumber:latest
RUN mkdir -p /app/
RUN apt-get -y install r-base
RUN Rscript -e "install.packages('lubridate')"
WORKDIR /app/
COPY deploy_demo_test2.R /app/
COPY PredictionDemo.RData /app/
CMD ["/app/deploy_demo_test2.R"]
