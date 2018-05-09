FROM trestletech/plumber:latest
RUN mkdir -p /app/
RUN apt-get -y install r-base
RUN Rscript -e "install.packages('lubridate')"
WORKDIR /app/
COPY Test3.R /app/
COPY Test3.RData /app/
CMD ["/app/Test3.R"]