set ANACONDA_ROOT=C:\Users\%USERNAME%\Anaconda3
IF NOT EXIST %ANACONDA_ROOT% (
    ECHO "Anaconda ist an einer unbekannten Stelle installiert"
    PAUSE
)

call %ANACONDA_ROOT%\Scripts\activate ml-potentials-and-risks && jupyter lab || (
    ECHO "Es gab einen Fehler beim Starten von JupyterLab in der Conda-Umgebung"
    PAUSE
)
