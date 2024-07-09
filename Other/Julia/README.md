# Container with Julia and Jupyter notebooks

This Singularity container is built upon an Ubuntu 20.04 base from Docker Hub:

- **Files:** This container incorporates two Julia scripts (`JuliaPackages.jl` and `JuliaImports.jl`) from an external directory in the host system.

- **System Packages Installation:** The container installs a variety of packages for system utilities, software development, networking, and graphics. This includes tools, for example, a GUI browser (Firefox).

- **Julia Setup:** The Julia programming language, a high-level, high-performance language for technical computing, is downloaded, unpacked, and installed into the `/opt/` directory. The `PATH` and `JULIA_DEPOT_PATH` environment variables are updated to include the Julia binary and package depot directories respectively. Two Julia scripts from an external directory are executed to install necessary Julia packages and handle imports.

The container has a detailed set of steps outlining its deployment process. It includes clearing certain directories in the user's home directory, creating a `JULIA` folder in the project's `tools` directory, and copying files to it. The container then runs in shell mode with the Julia executable in the `PATH`. Specific Julia scripts are run and an IJulia kernel is installed, providing a Julia backend to Jupyter.
