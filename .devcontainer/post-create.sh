#!/usr/bin/env bash
pipx install pre-commit==4.0.1

# If the project is not already a git repository, initialize it
if [ ! -d .git ]; then
    echo "Initializing git repository"
    git init -b main .
fi
git config --global --add safe.directory /workspaces/py_dev
pre-commit install
pip install -r requirements.txt
