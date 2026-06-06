# nvim-to-LaTeX
Compiling a file into a pdf with LaTeX is very easy.

You can do this with NeoVim but also probably any other text editor.

Simply add this line to NeoVim's `init.lua` and bind it to a key. (by default ``<leader> + p``)

This requires texlive's core packages, which you can find [here](https://archlinux.org/packages/?sort=&q=texlive&maintainer=&flagged=)

## What it looks like
https://github.com/user-attachments/assets/3b52a30e-cdf8-4667-85fb-6eeb4fae376c

## Arch Linux (pacman)
```
sudo pacman -S texlive-binextra texlive-basic
```
## Ubuntu/Debian apt
```
sudo apt install texlive-latex-base
```
