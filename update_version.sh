#!/bin/bash
repo_name=$(basename -s .git `git config --get remote.origin.url`)
version_url="https://github.com/GLAM-Workbench/$repo_name/releases/tag/$1"
sed -ri "s|Current version: \[.*\](.*tag\/v.*)|Current version: [$1]($version_url)|" README.md
text=$(sed '/^<\!-- START RUN INFO/,/^<\!-- END RUN INFO/d'  README.md | sed -r 's/\[(.*)\]\(.*\.ipynb\)/\1/' | pandoc | sed '1d' | echo $(cat));
pdate=$(date +"%Y-%m-%d");
identifier=$(jq -r '.related_identifiers[0].identifier' .zenodo.json | sed "s/\/tree\/v.*/\/tree\/$1/")
jq --arg text "$text" '.description = $text' .zenodo.json \
| jq --arg version "$1" '.version = $version' \
| jq --arg identifier $identifier '.related_identifiers[0].identifier = $identifier' \
| jq --arg pdate "$pdate" '.publication_date = $pdate' > zenodo.json
rm .zenodo.json;
mv zenodo.json .zenodo.json;