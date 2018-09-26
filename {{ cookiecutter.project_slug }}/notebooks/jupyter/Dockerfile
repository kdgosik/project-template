FROM jupyter/r-notebook

MAINTAINER {{ cookiecutter.full_name}} <{{ cookiecutter.email }}>

USER root

# System packages
RUN apt-get update -y && apt-get install -y \
	libicu-dev \
	libpcre3-dev \
	libpq-dev \
	libssl-dev \
	libxml2-dev \
	xorg-dev \
	python-pip


USER $NB_USER
RUN conda install -c r r-xml


# Custom R packages
ADD install_packages.R /src/
RUN Rscript /src/install_packages.R

## Custom Python packages
ADD requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /home/src
