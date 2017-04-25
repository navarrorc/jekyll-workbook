#!/bin/bash

read -p "website name? " site

jekyll new $site --blank

cp -a ./_additional-resources/. ./$site/

cd ./$site
mkdir _includes
mkdir _sass
mkdir css

cat > index.html <<DELIM
---
title: $site
---
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>{{ page.title }}</title>
</head>
<body>
    <h1>Hello from Jekyll</h1>
</body>
</html>
DELIM

cat > css/main.scss <<DELIM
---
---

/* CSS Styles are defined below */
DELIM

npm install