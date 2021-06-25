# Maschinelles Lernen: Potentiale und Risiken

In diesem Repository wird das Arbeitsmaterial für das Seminar "aMschinelles Lernen: Potentiale und Risiken" verwaltet.
Sie sind in Vorträge und Selbstarbeitsphasen eingebettet, die den Aufgaben weiteren Kontext geben.

## Vorbereitung auf das Seminar

Das Herunterladen und die Installation von Software ebenso wie das Herunterladen und Entpacken von großen Datenmengen kostet viel Zeit.
Diese Schritte sollen deswegen bereits vor dem Seminar vorgenommen werden.
Eine Anleitung ist
[in dieser PDF](./Vorbereitung-auf-das-Seminar.pdf)
zu finden.

## Ausführen auf leistungsschwachen Geräten

Sie können die Jupyter Notebooks auch online über Binder ausführen.
Klicken Sie dafür
[auf diesen Binder-Starter](https://mybinder.org/v2/gh/1kastner/ml-potentials-and-risks/master?urlpath=lab),
um dieses GitHub-Repository online zu laden.
Diese Webseite ist manchmal etwas langsam, weswegen eine lokale Installation zu bevorzugen ist.

## Weiterführende Materialien

Die Materialien im Ordner `05 weiterfuehrende-beispiele` dienen nach Abschluss des Seminars zu einer vertieften Auseinandersetzung mit dem Thema.
In den ersten Zellen des Jupyter Notebooks werden die zusätzlich benötigten Bibliotheken installiert.

## Geprüfte Bibliotheksversionen

Bibliotheken werden regelmäßig geupdatet und es kann irgendwann passieren, dass die Jupyter Notebooks aus diesem Repo invaliden Code enthalten werden.
Zur Sicherstellung, dass mithilfe eines Downgrades schnell eine funktionierende Version wiederhergestellt werden kann, werden regelmäßig folgende Kommandos ausgeführt:
- `conda list --export > _working-library-versions/environment_pinned_versions.yml`
- `conda list --explicit > _working-library-versions/spec-file.txt`
- `pip freeze --local | Select-String -Pattern '^((?!file).)*$' > _working-library-versions/requirements.txt`

Die Dateien befinden sich dann im Unterverzeichnis `./_working-library-versions` .

## Lizenz

Siehe [LICENSE](LICENSE).
