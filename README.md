# nvim-to-LaTeX
Compiling a file into a pdf with LaTeX is very easy.

You can do this with NeoVim but also probably any other text editor.

Simply add it to NeoVim's init.lua and bind it to a key. (default is **\ + p**)

Requires texlive's core packages, which you can find here (for Arch Linux): https://archlinux.org/packages/?sort=&q=texlive&maintainer=&flagged=

```
sudo pacman -S texlive-binextra texlive-basic
```
