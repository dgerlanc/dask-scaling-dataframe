# Python and Dask: Scaling the DataFrame

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dgerlanc/dask-scaling-dataframe/master?urlpath=lab)

This repository contains the slides, exercises, and answers for *Python and Dask: Scaling the Dataframe*. The goal of this tutorial is to teach you, someone with experience working with tabular data in pandas, to scale to problems that do not fit in memory on a single machine.

## Why this course exists

Python's most popular data science libraries—pandas, numpy, and
scikit-learn—were designed to run on a single computer, and in some cases, using
a single processor. Whether this computer is a laptop or a server with 96 cores,
your compute and memory are constrained by the size of the biggest computer you
have access to.

In this course, you'll learn how to use Dask, a Python library for parallel and
distributed computing, to bypass this constraint by scaling our compute and
memory across multiple cores. Dask provides integrations with Python libraries
like pandas, numpy, and scikit-learn so you can scale your computations without
having to learn completely new libraries or significantly refactoring your code.

### Prerequisites:

Workshop assumes that participants have intermediate-level programming ability
in Python and experience using Pandas. Participants should know the difference
between a `dict`, `list`, and `tuple`. Familiarity with control-flow
(`if/else/for/while`) and error handling (`try/catch`) are required.

No statistics background is required.

## Installation

### Binder

If you have a stable Internet connection and the free Binder service isn't under too much load, the easiest way to interactively run the slides and try the exercises is to click the
Binder badge (make sure you open in a new window). Keep in mind that Binder aggresively shuts down idle instances so you'll need to refresh the link if you're idle for too long.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dgerlanc/dask-scaling-dataframe/master?urlpath=lab)

### Prerendered Notebooks

You may view the HTML versions of slides and the answers directly in your browser on Github though you will not be able to run them interactively:

* [Lesson 1 - Introduction to Dask](https://github.com/dgerlanc/dask-scaling-dataframe/blob/master/01-10-minutes-to-dask.ipynb)
* [Lesson 2 - Dask DataFrames](https://github.com/dgerlanc/dask-scaling-dataframe/blob/master/02-dask-dataframe.ipynb)
* [Lesson 3 - Profiling with the Dask Dashboard](https://github.com/dgerlanc/dask-scaling-dataframe/blob/master/03-dask-performance.ipynb)
* [Lesson 4 - Dask Schedulers](https://github.com/dgerlanc/dask-scaling-dataframe/blob/master/02a-schedulers.ipynb)

### Local Installation

If you're taking the course, want to follow along with the slides and do the
exercises, and may not have Internet access, download and
install the Anaconda Python 3 distribution and `conda` package manager
ahead of time:

```
https://www.anaconda.com/download/
```

Download the latest version of the course materials
[here](https://github.com/dgerlanc/dask-scaling-dataframe/archive/master.zip).

Alternatively, you may clone the course repository using `git`:

```
$ git clone --depth 1 https://github.com/dgerlanc/dask-scaling-dataframe.git
```

The remainder of the installation requires that you use the command line.

To complete the course exercises, you must use `conda` to install the
dependencies specified in the `environment.yml` file in the repository:

```
$ conda env create -f environment.yml
```

This will create an `conda` environment called `dask-scaling-the-dataframe` which may be
"activated" with the following commands:

* Linux and Mac: `conda activate dask-scaling-the-dataframe`
* Windows: `activate dask-scaling-the-dataframe`

Once you've activated the environment your prompt will probably
look something like this:

```sh
(dask-scaling-the-dataframe) $
```

We won't show the environment name to the left of the prompt for subsequent
shell commands.

The entire course is designed to use `jupyter` notebooks. Start the
notebook server to get started:

```sh
$ jupyter lab
```

__Optional__

The Dask JupyterLab extension allows you to view the distributed scheduler
dashboard from within JupyterLab. It is _not_ required to complete the course,
though you may find it useful.

If you want to enable the Dask extension for JupyterLab run the following before
 you start JupyterLab:

```sh
$ jupyter labextension install dask-labextension
$ jupyter serverextension enable dask_labextension
```
