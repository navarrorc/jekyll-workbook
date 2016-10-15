#!/bin/bash

read -p "website name? " site

jekyll new $site --blank

cp -a ./_additional-resources/. ./$site/

cd ./$site

npm install