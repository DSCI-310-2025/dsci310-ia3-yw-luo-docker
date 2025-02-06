# specifies the base image to use
FROM rocker/rstudio:4.4.2

# Install an R package with a pinned version
RUN Rscript -e 'install.packages("remotes")' \
    && Rscript -e 'remotes::install_version("cowsay", version = "0.8.0")'

# set the default working directory inside the container
WORKDIR /home/rstudio