:: Creates the conda environment from the environment file in the same directory

@ECHO OFF

SETLOCAL EnableDelayedExpansion

SET CONDA_ENV=ml-potentials-and-risks

where conda 2> nul
IF ERRORLEVEL 1 (
    ECHO Conda is not available in your PATH. Guessing the location of the installation...
    SET CONDA=%USERPROFILE%\Anaconda3\Scripts\conda
    ECHO Assume conda to be located at !CONDA!
) ELSE (
    SET CONDA=conda
)

CALL %CONDA% info --base >.conda-base.tmp
SET /p CONDA_BASE=<.conda-base.tmp
SET CONDA_ENV_DIR=!CONDA_BASE!\envs\%CONDA_ENV%
ECHO Checking if environment already exists at !CONDA_ENV_DIR!
IF EXIST !CONDA_ENV_DIR!\ (
    ECHO Environment already exists, creation not possible!
    PAUSE
    GOTO :EOF
) ELSE (
    ECHO No previous installation detected, proceed
)

REM Reset errorlevel to 0
VERIFY > nul
ECHO Start creating the environment %CONDA_ENV%
CALL %CONDA% env create --file environment.yml 
IF ERRORLEVEL 1 (
    ECHO The creation process encountered an error, please check the output
    PAUSE
    GOTO :EOF
)
