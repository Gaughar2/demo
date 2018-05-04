FROM trestletech/plumber:latest
RUN mkdir -p /app/
RUN apt-get update && apt-get install -y {lubridate}
WORKDIR /app/
COPY deploy_demo_test2.R /app/
COPY Demo_Model2.RData /app/
CMD ["/app/deploy_demo_test2.R"]
