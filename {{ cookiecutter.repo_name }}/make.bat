@ECHO OFF
REM Command file for project template, does the same job as Makefile on Linux-based systems.

REM #################################################################################
REM # GLOBALS                                                                       #
REM #################################################################################

SET PROJECT_DIR=%cd%
SET PROJECT_NAME="{{ cookiecutter.repo_name }}"
SET PYTHON_INTERPRETER="{{ cookiecutter.python_interpreter }}"

REM #################################################################################
REM # COMMANDS                                                                      #
REM #################################################################################


REM ## Delete all compiled Python files
if "%1" == "clean" (
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
    goto end
)

REM ## Initial set up of python interpreter environment, version control and pre-commit hooks
if "%1" == "init" (
    call conda env create -f .conda-env.yml
    call conda activate %PROJECT_NAME%
    git init
    dvc init
    echo '[core]' >> .dvc/config
    echo 'analytics = false' >> .dvc/config
    pre-commit install
    pre-commit autoupdate
    echo 'CWD=' >> .env
    git add . 
    git commit -m "Initial commit :tada:"
    echo ">>> New virtualenv created. Activate with: conda activate %PROJECT_NAME%"
    echo ">>> git and dvc are ready to go"
    goto end
)

if "%1" == "requirements" (
    call conda activate {{ cookiecutter.repo_name }}
    pip install -r requirements.txt
    goto end
)

if "%1" == "commit" (
    echo ">>> for now, do it manually."
    goto end
)

if "%1" == "push" (
    git push origin --follow-tags
    conda activate %PROJECT_NAME%
    dvc push
    goto end
)

REM #################################################################################
REM # PROJECT RULES                                                                 #
REM #################################################################################

REM #################################################################################
REM # Self Documenting Commands                                                     #
REM #################################################################################

:end
