FROM rocker/r-ver:4.1.0

#RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev

#ENV RENV_VERSION 0.14.0

#RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
#RUN Rscript -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

WORKDIR /flare-detection
COPY renv.lock renv.lock
#RUN Rscript -e 'renv::restore()'

# Default to bash terminal when running docker image
CMD ["bash"]