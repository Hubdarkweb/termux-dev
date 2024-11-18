<h1 align="center">Termux-Dev!</h1>
<p align="center">A project focused on providing a development environment from our Termux terminal using Android.</p>
<h2>Preview</h2>
<p align="center">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/logo.jpg">
</p>
<h2>Installation</h2>

Update termux repositories.

```bash
yes|pkg update && yes|pkg upgrade
```

Grant storage permissions.
```bash
termux-setup-storage
```

Install the git package.
```bash
yes|pkg install git
```

Clone the repository.
```bash
git clone https://github.com/TermuxDev/termux-dev.git
```

Exec the installer.
```bash
cd termux-dev/ && bash setup.sh
```

Exit of the shell.
```bash
exit
```

<h2>Argument (init)</h2>

> You can start a frontend or backend project setup installation, using the (init) argument with its respective options:

```bash
dev init react
```

```bash
dev init express
```

<h2>Argument (deploy)</h2>

> You can deploy and upload your files to different platforms, using the (deploy) argument with its respective options:

```bash
dev deploy github
```

<h2>New code editor (NvChad)</h2>

<a href="https://nvchad.com">NvChad Docs</a>

> Read the official NvChad documentation to take advantage of all its features.

<p align="center">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-alt-h.jpg">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-alt-i.jpg">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-ctrl-n.jpg">
</p>

<h2>Syntax nvim</h2>

> It is advisable to install the syntax of the languages to be used, for example:

```bash
:TSInstall python bash
```

<h2>MasonInstall nvim</h2>

> You can install packages inside "nvim" using its "Mason" package installer, for example:

```bash
:MasonInstall tailwindcss-language-server eslint-lsp
```

<h2>Update Termux-Dev!</h2>

> You can update Termux-Dev, by running the command:

```bash
termux-dev-update
```

<h2>Follow me</h2>

> If you want more information about Termux-Dev, we invite you to view the content on our social networks.

<p align="left">
  <a href="https://youtube.com/@TermuxxDev"><img alt="YouTube" src="https://img.shields.io/badge/YouTube-%23c4302b"></a>
  <a href="https://tiktok.com/@termuxxdev"><img alt="TikTok" src="https://img.shields.io/badge/TikTok-black"></a>
  <a href="https://t.me/termuxxdev"><img alt="Telegram" src="https://img.shields.io/badge/Telegram-%23229ED9"></a>
  <a href="https://www.facebook.com/termuxxdev"><img alt="Facebook" src="https://img.shields.io/badge/Facebook-%233b5998"></a>
</p>

