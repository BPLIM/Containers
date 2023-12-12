Here you will find the instructions to use the base container available on Sylabs. Additionally, we provide instructions on how you can build your own container from the one available on Sylabs.

## Using the container available in Sylabs

1. Download the container

Go to [https://cloud.sylabs.io/library/reisportela/bplim/bplim_stata17_python310](https://cloud.sylabs.io/library/reisportela/bplim/bplim_stata17_python310) and download the container.

2. Launch the container in your local machine

`singularity shell -B $(pwd)/stata.lic:/usr/local/stata/stata.lic iBPLIM_Stata17_Python310_Sylabs.sif`