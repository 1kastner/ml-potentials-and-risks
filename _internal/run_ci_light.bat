@ECHO OFF

ECHO.Please run this batch script as a substitute of the GitHub workflows.
ECHO.This light version of the CI does not run the fresh conda installation.

REM Move to project root directory
CD %~dp0\..

REM check code quality
ECHO.Run flake8
flake8 || ECHO.While linting, flake8 failed && EXIT /B
ECHO.flake8 succeeded
ECHO.Run flake8_nb
flake8_nb || ECHO.While linting, flake8_nb failed && EXIT /B
ECHO.flake8_nb succeeded

REM build docs
ECHO.Run sphinx
CALL python -m sphinx -W --keep-going ./ ./.sphinx/_build/  ^
    || ECHO.While building the docs, sphinx failed. For further information, please check <PROJECT-ROOT>/.sphinx/Readme.md. && EXIT /B
ECHO.Sphinx succeeded
ECHO.Run sphinx linkcheck
CALL python -m sphinx -W --keep-going -b linkcheck ./ ./.sphinx/_build/ ^
    || ECHO.While checking the links, sphinx failed. For further information, please check <PROJECT-ROOT>/.sphinx/Readme.md. && EXIT /B
ECHO.Sphinx linkcheck succeeded

ECHO.All steps were executed successfully. Please consider also checking the skipped CI steps manually if you changed
ECHO.related files.
