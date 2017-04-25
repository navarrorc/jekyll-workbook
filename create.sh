#!/bin/bash

read -p "website name? " site

jekyll new $site --blank

cp -a ./_additional-resources/. ./$site/

cd ./$site
mkdir _includes

cat > index.html <<DELIM
---
title: $site
---
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ page.title }}</title>
</head>
<body>
    <h1>Hello from Jekyll</h1>
</body>
</html>
DELIM

npm install