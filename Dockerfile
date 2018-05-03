FROM trestletech/plumber
RUN mkdir -p /app/
WORKDIR /app/
COPY Deploy_Demo_Test 2.R /app/
COPY Demo_Model2.RData /app/
CMD ["/app/Deploy_Demo_Test 2.R"]