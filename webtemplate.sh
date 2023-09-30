#!/bin/bash


mkdir src dist

npm init
npm install -D postcss
npm install -D autoprefixer
npm install -D tailwindcss
npx tailwindcss init

cat << eof > index.html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./dist/style.css">
    <title>erikweb</title>
</head>
<body>
</body>
</html>
eof

touch ./dist/style.css


cat << eof > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./*.{html,js}","./src/*.js"],
  theme: {
    extend: {},
  },
  plugins: [],
}
eof
