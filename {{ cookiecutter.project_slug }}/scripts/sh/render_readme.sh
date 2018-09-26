#! /bin/bash

#$ -cwd
#$ -q broad

# source /broad/software/scripts/useuse
# source /home/unix/kgosik/.my.bashrc

# use .r-3.5.0
# use .pandoc-1.12.4.2
Rscript -e 'rmarkdown::render("README.Rmd")'
Rscript -e 'knitr::knit("README.Rmd")'
