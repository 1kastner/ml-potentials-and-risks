:: Updates the conda environment in case the environment.yml is modified

@ECHO OFF

SETLOCAL EnableDelayedExpansion

SET CONDA_ENV=ml-potentials-and-risks

ECHO Update conda environment %CONDA_ENV%

where conda 2> nul
IF ERRORLEVEL 1 (
    ECHO Conda is not available in your PATH. Guessing the location of the installation...
    SET ACTIVATE=%USERPROFILE%\Anaconda3\Scripts\activate
    ECHO Assume conda activate to be located at !ACTIVATE!
    CALL !ACTIVATE! base || (
        ECHO Either Conda or the environment was not found.
        PAUSE
        GOTO :EOF
    )
) ELSE (
    CALL activate base
)

CALL conda env update --name %CONDA_ENV% --file environment.yml || (
    ECHO The update process encountered an error, please check
    PAUSE
    GOTO :EOF
)
