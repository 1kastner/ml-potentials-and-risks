@ECHO OFF

ECHO.Please run this batch script as a substitute of the GitHub workflows
ECHO.This light version does not run the fresh conda installation

REM Move to project root directory
CD ..

REM check code quality
flake8 || ECHO.While linting, flake8 failed && EXIT /B
flake8_nb || ECHO.While linting, flake8_nb failed && EXIT /B

REM build docs
CALL python -m sphinx -W --keep-going ./ ./.sphinx/_build/  || ECHO.While building the docs, sphinx failed && EXIT /B
CALL python -m sphinx -W --keep-going -b linkcheck ./ ./.sphinx/_build/ || ECHO.While checking the links, sphinx failed && EXIT /B

ECHO.All steps were executed successfully. Please consider also checking the skipped CI steps manually if you changed
ECHO.related files.
