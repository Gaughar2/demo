FROM trestletech/plumber:latest
EXPOSE 8000
RUN Rscript -e "install.packages('lubridate')"
COPY Test3.R /app/
COPY Test3.RData /app/
WORKDIR /app/
CMD ["/app/Test3.R"]