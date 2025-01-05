[![Windows conda installation (conda in PATH)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/conda-installation.yaml/badge.svg)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/conda-installation.yaml)
[![Windows conda installation (conda not in PATH)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/conda-installation-not-in-path.yaml/badge.svg)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/conda-installation-not-in-path.yaml)
[![Build LaTeX document](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/latex.yaml/badge.svg)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/latex.yaml)
[![Document integrity checks](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/notebook-integrity.yaml/badge.svg)](https://github.com/1kastner/ml-potentials-and-risks/actions/workflows/notebook-integrity.yaml)
[![Sphinx preview](https://img.shields.io/badge/SphinxPreview-yes-green.svg)](https://ml-potentials-and-risks.readthedocs.io/de/latest/)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/1kastner/ml-potentials-and-risks.git/using-python-3-11)

# Maschinelles Lernen: Potentiale und Risiken

In diesem Repository wird das Arbeitsmaterial für das Seminar "Maschinelles Lernen: Potentiale und Risiken" verwaltet.
Sie sind in Vorträge und Selbstarbeitsphasen eingebettet, die den Aufgaben erst ihren Kontext geben.

## Vorbereitung auf das Seminar

Das Herunterladen und die Installation von Software kostet etwas Zeit.
Diese Schritte sollen deswegen bereits *vor* dem Seminar vorgenommen werden.
Eine Anleitung ist
[in dieser PDF](./Vorbereitung-auf-das-Seminar.pdf)
zu finden.

## Ausführen auf leistungsschwachen Geräten

Sie können die Jupyter Notebooks auch online über Binder ausführen.
Klicken Sie dafür
[auf diesen Binder-Starter](https://mybinder.org/v2/gh/1kastner/ml-potentials-and-risks/master?urlpath=lab),
um dieses GitHub-Repository online zu laden.
Diese Webseite ist manchmal etwas langsam und setzt bei Inaktivität den Bearbeitungsstand zurück, weswegen eine lokale Installation zu bevorzugen ist.

## Geprüfte Bibliotheksversionen

Bibliotheken werden regelmäßig geupdatet und es kann irgendwann passieren, dass die Jupyter Notebooks aus diesem Repository aufgrund von Updates nicht mehr ausführbaren Code enthalten werden.
Zur Sicherstellung, dass mithilfe eines Downgrades schnell eine funktionierende Version wiederhergestellt werden kann, werden regelmäßig folgende Befehle ausgeführt:
- `conda list --export > .working-library-versions/environment_pinned_versions.yml`
- `conda list --explicit > .working-library-versions/spec-file.txt`
- `pip freeze --local | Select-String -Pattern '^((?!file).)*$' > .working-library-versions/requirements.txt`

Die Ausgabe-Dateien befinden sich im Unterverzeichnis `./_working-library-versions` und sind dafür da, um den letzten funktionierenden Arbeitsstand zu identifizieren.

## Lizenz

Siehe [LICENSE](LICENSE).
