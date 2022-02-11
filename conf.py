# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import datetime
import os

import requests


# -- Project information -----------------------------------------------------


author = "Marvin Kastner"
project = 'Maschinelles Lernen: Potentiale und Risiken'
current_year = datetime.datetime.now().year
project_copyright = f'{current_year}, {author}'

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'nbsphinx'
]

# Add any paths that contain templates here, relative to this directory.
templates_path = [
    os.path.join('.sphinx', '_templates')
]

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = [
    # OS-specific
    'Thumbs.db', '.DS_Store',

    # git-specific (incl. GitHub)
    '.git', '.github',

    # Python-specific
    '.virtual_documents', '**/.ipynb_checkpoints', 'venv',

    # specific for this project
    '.user-settings', '.sphinx/_build', '_internal',
]

# -- Options for HTML output -------------------------------------------------

html_theme = "classic"

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = [
    os.path.join('.sphinx', '_static')
]

# The files contain several
nbsphinx_execute = "never"

nbsphinx_execute_arguments = [
    "--InlineBackend.figure_formats={'svg', 'pdf'}",
    "--InlineBackend.rc=figure.dpi=96",
]

# -- Options for linkcheck ---------------------------------------------------

linkcheck_retries = 5
linkcheck_timeout = 1
linkcheck_ignore = [
    "https://dev.socrata.com/docs/app-tokens.html"
]

# check manually for the meantime
response = requests.get("https://dev.socrata.com/docs/app-tokens.html", verify=False)
response.raise_for_status()
