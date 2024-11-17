#!/bin/bash

source ~/.termux-dev/env/config.sh

# Installing VITE modules

npm install

# Deleting VITE Files

rm src/App.css
rm src/index.css
rm src/App.jsx
rm src/assets/react.svg
rm public/vite.svg

# Editing Default App.jsx

echo 'import { BrowserRouter, Routes, Route } from "react-router-dom";

const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<h1>Hello</h1>} />
      </Routes>
    </BrowserRouter>
  );
};

export default App;' > src/App.jsx

# Installing TailWindCSS

npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

echo '/** @type {import("tailwindcss").Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}' > tailwind.config.js

echo '@tailwind base;
@tailwind components;
@tailwind utilities;' > src/index.css

# Installing prettier-plugin-tailwindcss

npm install -D prettier prettier-plugin-tailwindcss
echo '{
  "plugins": ["prettier-plugin-tailwindcss"]
}' > .prettierrc

# Installing React Plugins

npm install react-router-dom react-icons axios

# Installation Completed

echo -e "
Installed:

tailwindcss
prettier-plugin-tailwindcss
react-router-dom
react-icons
axios
"
