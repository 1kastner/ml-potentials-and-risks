:: Lösche alte Artefakte

DEL *.aux *.log *.out *.blg

:: Führe sämtliche Schritte durch, um die PDF korrekt zu entwickeln

pdflatex vorbereitung-auf-das-seminar.tex || goto :error
bibtex vorbereitung-auf-das-seminar || goto :error
pdflatex vorbereitung-auf-das-seminar.tex || goto :error
pdflatex vorbereitung-auf-das-seminar.tex || goto :error

:: Wenn die PDF erfolgreich erstellt worden ist,
:: dann schließe das Fenster, falls es über Doppelklick geöffnet worden ist
ECHO SUCCESS!

:: Lösche gerade erzeugte Artefakte
DEL *.aux *.log *.out *.blg

start vorbereitung-auf-das-seminar.pdf

goto :EOF

:: Wenn die PDF erfolgreich fehlgeschlagen ist,
:: dann behalte das Fenster geöffnet.
:error
echo FAILED!
PAUSE
