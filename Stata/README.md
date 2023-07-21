# There are two examples in this folder.

The first example, `Jupyter`, relates to a container with Stata and Jupyter notebooks.

- **Files:** This container incorporates a Stata 'do' file (`BPLIM_Stata17_Jupyter_nbstata_V01.do`), and two packages (`libpng12-0_1.2.54-1ubuntu1.11ppa0eoan_amd64.deb` and `stata17.tar.gz`) from an external directory in the host system.

- **Environment Setup:** The container sets the timezone to `Europe/Lisbon` and updates the `PATH` variable to include the Stata binary directory.

- **System Packages Installation:** The container installs a variety of packages for system utilities, software development, and graphics, including tools for HTTP transport, Git, file compression, text formatting (Pandoc), TeX Live's base LaTeX files, and some X11 applications.

- **Stata Setup:** The container installs Stata 17 from a local tarball file and moves it to the `/opt/` directory. The package `libpng12-0` is also installed from a local .deb file. The 'do' file presumably installs necessary Stata ado-files. The Stata executable is made accessible system-wide via the `PATH` environment variable.

- **Python Setup:** Python 3 pip is installed, along with Python setuptools, and the Python package `nbstata`, which allows Stata to interact with Jupyter notebooks. 

- **Browser Installation:** The container installs Firefox, a GUI browser.

- **Jupyter Setup:** JupyterLab and various Jupyter extensions such as `jupyter_contrib_nbextensions`, `jupyter_nbextensions_configurator`, and `RISE` are installed. This setup allows notebooks to have extended functionality.


The second container, `Parquet`, adds the ability to handle parquet files.

This container has Stata and supports the Apache Parquet columnar storage format. It's designed to leverage the high-speed data analytics capabilities of Apache Parquet within Stata's framework.

The setup involves a custom Conda environment, 'stata-parquet', installed from an external YAML file. The environment is activated and contains all required packages to ensure compatibility between Stata and Parquet.

Besides, the container includes the necessary libraries and packages for compiling the 'stata-parquet' GitHub repository, linking it to the Stata installation. Stata 17 is installed from a .tar file and then complemented with additional ado files. 

Overall, this container combines high-performance data processing with advanced statistical analysis.
