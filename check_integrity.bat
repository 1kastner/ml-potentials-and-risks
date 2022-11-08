@ECHO OFF

ECHO.Linting Python code with flake8
CALL flake8 || (
    ECHO flake8 failed. See the logs above.
    EXIT /B
)

ECHO.Linting Jupyter Notebooks with flake8_nb
CALL flake8_nb || (
    ECHO flake8_nb failed. See the logs above.
    EXIT /B
)

ECHO.Building documentation as a check whether the code works
python -m sphinx -W --keep-going ./ ./.sphinx/_build/ || (
    ECHO Sphinx failed. See the logs above.
    EXIT /B
)

ECHO.Checking links inside Jupyter Notebooks
python -m sphinx -W --keep-going -b linkcheck ./ ./.sphinx/_build/ || (
    ECHO An issue was found, probably a broken link. See the logs above.
    EXIT /B
)

ECHO.All integrity checks have passed successfully!
