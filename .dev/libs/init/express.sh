#!/bin/bash

source ~/.termux-dev/env/config.sh

# Init backend project

npm init --yes
mkdir src

nameProject=$(awk "NR == 2" package.json | cut -d '"' -f 4)

# Adding config to package.json

echo '{
  "name": "backend",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "type": "module",
  "scripts": {
    "dev": "node --env-file .env --watch src/index.js"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}' > package.json

# Replacing name project

sed -i "s!backend!${nameProject}!g" package.json

# Installing express and backend modules

npm install express mongoose cors morgan bcryptjs jsonwebtoken cookie-parser axios

# Editing default index.js

echo 'import app from "./app.js";

app.listen(3000);

console.log("[√] >>> http://localhost:" + 3000);' > src/index.js

# Editing default app.js

echo 'import express from "express";
import morgan from "morgan";

const app = express();

app.use(morgan("dev"));

export default app;' > src/app.js

# Set en variable

echo 'PORT=3000' > .env

# Installation Completed

echo -e "
Installed:

express
mongoose
cors
morgan
bcryptjs
jsonwebtoken
cookie-parser
axios
"
