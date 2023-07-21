# Container with R and RStudio

This Singularity container is built from an Ubuntu 20.04 base, obtained from Docker Hub:

- **Localization Setup:** The locale and timezone are set to `en_US.UTF-8` and `Europe/Lisbon` respectively, and the path of TinyTeX, a custom LaTeX distribution, is appended to the system `PATH`. These settings ensure appropriate localization and access to LaTeX for document typesetting.

- **System Packages Installation:** Essential system and development tools are included.

- **R Installation:** This container incorporates R. The R 4.0 repository from CRAN is added and the base and recommended packages are installed.

- **RStudio Installation:** RStudio is installed.

- **R Packages Installation:** A number of popular R packages from CRAN are installed, including `tidyverse`, `devtools`, `rmarkdown`, `knitr`, and more, to facilitate various data manipulation, visualization, and reporting tasks. The `tinytex` package is installed to enable the creation of LaTeX documents from R and a specific package `clustMixType` is also installed.

- **Cleaning Up:** The container cleans temporary files and removes unnecessary packages by calling `apt-get autoclean` and `apt-get autoremove`, helping to reduce the image size.

