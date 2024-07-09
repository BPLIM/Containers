# BPLIM's Python Container

This repository contains the definition file to build a Singularity container designed for BPLIM's projects. The container is based on Ubuntu 20.04 and includes necessary Python dependencies specified in a `requirements.txt` file.

## Container Details

- **Base Image (available on Sylabs):** `reisportela/bplim/ubuntu2004:2024_05_09`


## Files

- `requirements.txt` (must be in the same directory as the definition file during the build)

## Labels

- **Dependencies:**
  - Base Image: `reisportela/bplim/ubuntu2004:2024_05_09`
  - `requirements.txt` file

## Python Dependencies

The following Python packages are included in the `requirements.txt` file:

```plaintext
pandas==2.2.2
scipy==1.13.0
statsmodels==0.14.2
scikit-learn==1.4.2
matplotlib==3.8.4
jupyterlab==4.1.6
notebook==7.1.3
```

## Building the Container

To build the Singularity container, use the following command in the terminal:

```{sh}
time singularity build --fakeroot --force iBPLIM_Python.sif BPLIM_Python_V01.def
```

Ensure that requirements.txt is present in the same directory as the definition file before running the build command.

## Running the Container

To run the container, use the following command in the terminal:

```{sh}
singularity shell iBPLIM_Python.sif
```


## Additional Information

This container is designed to facilitate consistent environments for BPLIM's Python projects, ensuring all necessary dependencies are installed and the environment is correctly configured.

For any issues or contributions, please contact BPLIM's Team.

Note: Ensure you have Singularity installed and properly configured to build and run the container.
