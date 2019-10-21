# Cookiecutter Data Science Template [crplab]

_A logical, reasonably standardized, but flexible project structure for doing and sharing data science work._

Cookiecutter Data Science is a real game changer for data science projects.
Thanks to [@drivendata](https://github.com/drivendata) and [@vasinkd](https://github.com/vasinkd) for the base of this template.

__HOW TO USE:__

First of all, install cookiecutter with:
```bash
$ pip install cookiecutter
```
After that you can use template with:
```bash
$ cookiecutter https://github.com/crplab/cdst
```

### The resulting directory structure
------------

The directory structure of your new project will look like this:

```
├── LICENSE
├── Makefile                    <- Makefile with commands like `make init` or `make clean`
├── make.bat                    <- It's like the Makefile, but for Windows
├── README.md                   <- The top-level README for developers using this project.
├── data
│   ├── external                <- Data from third party sources.
│   ├── interim                 <- Intermediate data that has been transformed.
│   ├── processed               <- The final, canonical data sets for modeling.
│   ├── features                <- Features may be stored here
│   ├── inference               <- Inference stages may be stored here
│   └── raw                     <- The original, immutable data dump.
│
├── docs                        <- A default Sphinx project; see sphinx-doc.org for details
│
├── models                      <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks                   <- Jupyter notebooks. Naming convention is a number (for ordering),
│                               the creator's initials, and a short `-` delimited description, e.g.
│                               `1.0-jqp-initial-data-exploration`.
│
├── references                  <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports                     <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures                 <- Generated graphics and figures to be used in reporting
│
├── .conda-env.yml              <- conda environment definition
│   
├── .pre-commit-config.yaml     <- pre-commit configuration
│
├── requirements.txt            <- The requirements file for reproducing the analysis environment, e.g.
│                               generated with `pip freeze > requirements.txt`
│   
├── __init__.py
│
└── {{cookiecutter.repo_name}}
    ├── __init__.py             <- Makes {{cookiecutter.repo_name}} a Python module
    ├── settings.py             <- illustrates how to use .env file
    ├── data                    <- Scripts to download or generate data
    │   └── make_dataset.py
    ├── features                <- Scripts to turn raw data into features for modeling
    │   └── featurize.py
    └── models                  <- Scripts to train models and then use trained models to make
        │                       predictions
        └── train.py
```
