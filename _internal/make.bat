:: Lösche alte Artefakte

DEL *.aux *.log *.out *.blg *.bbl *.synctex(busy) *.synctex.gz

:: Führe sämtliche Schritte durch, um die PDF korrekt zu entwickeln

pdflatex Vorbereitung-auf-das-Seminar.tex || goto :error
pdflatex Vorbereitung-auf-das-Seminar.tex || goto :error

:: Wenn die PDF erfolgreich erstellt worden ist,
:: dann schließe das Fenster, falls es über Doppelklick geöffnet worden ist
ECHO SUCCESS!

:: Lösche gerade erzeugte Artefakte
DEL *.aux *.log *.out *.blg *.bbl *.synctex(busy) *.synctex.gz

:: Kopiere Datei ins Überverzeichnis
XCOPY Vorbereitung-auf-das-Seminar.pdf .. || goto :error

start Vorbereitung-auf-das-Seminar.pdf

goto :EOF

:: Wenn die PDF erfolgreich fehlgeschlagen ist,
:: dann behalte das Fenster geöffnet.
:error
echo FAILED!
PAUSE
