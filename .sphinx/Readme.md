# Readme

Sphinx is used to check the integrity of the Jupyter Notebooks.

The following command builds a documentation of all the Jupyter Notebooks:
`python -m sphinx ./ ./.sphinx/_build/`.
This helps to identify issues with the headlines.

This command checks whether all links are still intact:
`python -m sphinx -b linkcheck ./ ./.sphinx/_build/`.
