# specifies the base image to use
FROM rocker/rstudio:4.4.2

# Install an R package with a pinned version 
# (combines them into a single layer, making the image smaller; If install.packages("remotes") fails, the second command won’t run.)
RUN Rscript -e 'install.packages("remotes")' \
    && Rscript -e 'remotes::install_version("cowsay", version = "0.8.0")'

RUN echo "Dockerfile updated!"
