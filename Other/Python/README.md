# Container with Python, Miniconda and Jupyter Lab

This Singularity container possesses key characteristics that make it a conducive environment for scientific computing:

- **Miniconda Integration:** The container incorporates Miniconda, which facilitates the management of packages and dependencies in isolated environments. Miniconda is installed in the `/opt/conda` directory, and its path is appended to the system `PATH` for easy access to the `conda` command.

- **Environment Creation:** As part of its setup process, the container creates a new conda environment, `myEnv1`. This ensures that the user has a dedicated environment with specific versions of Python and other libraries, supporting compatibility and reproducibility of their computational work.

- **Installation of Key Packages:** As an example, this container has installed `numpy`.

- **JupyterLab Integration:** The container features JupyterLab, a web-based interactive development environment for Jupyter notebooks, code, and data. JupyterLab is a staple in the data science and scientific computing fields, enabling interactive and exploratory computing. It is installed from the `conda-forge` channel. The `runscript` in the container ensures that the `myEnv1` conda environment, including JupyterLab, is activated whenever the container is run.

- **Firefox Integration:** The container integrates Firefox so one can use Jupyter notebooks.
