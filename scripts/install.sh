#!/usr/bin/env bash

set -e

conda env create -f environment.yml
conda activate dask-scaling-the-dataframe
jupyter labextension install dask-labextension
jupyter serverextension enable dask_labextension
