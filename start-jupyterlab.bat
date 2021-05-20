:: Starts JupyterLab

@ECHO OFF

SETLOCAL

SET CONDA_ENV=ml-potentials-and-risks

where conda 2> nul
IF ERRORLEVEL 1 (
    ECHO Conda is not available in your PATH. Guessing the location of the installation...
    CALL C:\Users\%USERNAME%\Anaconda3\Scripts\activate %CONDA_ENV% || (
        ECHO Either Conda or the environment was not found.
        PAUSE
    )
) ELSE (
    CALL activate %CONDA_ENV%
)

SET JUPYTERLAB_SETTINGS_DIR=%~dp0.user-settings
ECHO Loading settings for JupyterLab from %JUPYTERLAB_SETTINGS_DIR%

REM Reset errorlevel to 0
VERIFY > nul

CALL jupyter lab
IF ERRORLEVEL 1 (
    ECHO JupyterLab encountered an error, please check the error message
    PAUSE
)
