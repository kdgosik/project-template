
## golang build
golang-build:
		docker build -t {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:golang scripts/golang/

golang-run: workdir=$pwd
		docker run -it --rm -v $(CURDIR)/scripts/golang:/go/src {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:golang

## python build
python-build:
		cp requirements.txt scripts/python/requirements.txt
		docker build -t {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:python scripts/python

python-run:
		docker run -it --rm -v $(CURDIR)/scripts/python:/usr/src {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:python

## jupyter build
jupyter-notebook-build:
		cp install_packages.R notebooks/jupyter
		cp requirements.txt notebooks/jupyter
		docker build -t {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:jupyter-notebook notebooks/jupyter

jupyter-notebook-run:
	docker run -it --rm -v $(CURDIR)/notebooks/jupyter:/home/src -p 8888:8888 {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:jupyter-notebook


## R build
r-build:
		cp install_packages.R scripts/R/install_packages.R
		docker build -t {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:r scripts/R

r-run:
		docker run -it --rm -v $(CURDIR)/scripts/R:/usr/src {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:r

## rstudio build for notebooks
r-notebook-build:
		cp install_packages.R notebooks/Rmd
		docker build -t {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:r-notebook notebooks/Rmd


r-notebook-run:
		docker run -it --rm -v $(CURDIR)/notebooks/Rmd:/home/rstudio -p 8787:8787 {{ cookiecutter.github_username}}/{{ cookiecutter.project_slug }}:r-notebook


## render README
readme:
		sh scripts/sh/render_readme.sh
