Here you will find the instructions to use the base container available on Sylabs. Additionally, we provide instructions on how you can build your own container from the one available on Sylabs.

## Using the container available in Sylabs

1. Download the container

Go to [https://cloud.sylabs.io/library/reisportela/bplim/bplim_stata17_python310](https://cloud.sylabs.io/library/reisportela/bplim/bplim_stata17_python310) and download the container.

2. Launch the container in your local machine

`singularity shell -B $(pwd)/stata.lic:/usr/local/stata/stata.lic iBPLIM_Stata17_Python310_Sylabs.sif`

3. The definition file that was used to build the container in Sylabs is `BPLIM_basecontainer_Stata_Python310_forSylabs_V1.def`

## Build your container

1. Use the following definition file as a template

`BPLIM_Stata17_Python310_from_Sylabs_V4.def`

2. To build the container you must have a valid Stata 17 license

3. When building the container the file `Stata_ados_BASE.do` is used to install the ado files you need

4. In case you need additional Linux packages in your container they can be added in the section `%post` of the definition file. See further details at [https://github.com/BPLIM/Containers/tree/main/Stata](https://github.com/BPLIM/Containers/tree/main/Stata)