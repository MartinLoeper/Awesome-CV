<h1 align="center">
  My CV
</h1>

<p align="center">
  A nicely formatted document with information you can also easily find on LinkedIn ;)
</p>

<div align="center">
  <a href="https://github.com/MartinLoeper/My-CV/releases/download/latest/cv-martin-loeper.pdf">
    <img alt="CV" src="https://img.shields.io/badge/cv-pdf-green.svg?style=for-the-badge" />
  </a>
  <a href="https://github.com/MartinLoeper/My-CV/releases/download/latest/cv-us-martin-loeper.pdf">
    <img alt="CV US Version" src="https://img.shields.io/badge/cv--us-pdf-green?style=for-the-badge" />
  </a>
</div>

<br />

## Why?

There are many good reasons to have an up-to-date version of your CV available in an easy-editable format.   
If you want to create something similar, look at the [Awesome CV Latex template on GitHub](https://github.com/posquit0/Awesome-CV), I forked with this repository.  
If you want to get in touch, feel free to connect via [LinkedIn](https://www.linkedin.com/in/martinloeper/).

## Prerequisites
You need to run the following to install required packages if you are running Ubuntu 18.04:   
`sudo apt-get install texlive-full biber fonts-font-awesome`

Arch users need the following packages:   
`yay -S texlive-core texlive-bin texlive-bibtexextra texlive-latexextra ttf-font-awesome-4`

## Editor
I use Visual Studio Code version 1.55 to work on this project.
My recommended extensions are:
- znck.grammarly: Grammarly (unofficial)
- james-yu.latex-workshop: LaTeX Workshop

## Cover Letters
Cover letters are not public and can be checked-out and built using the following commands if appropriate privileges are in place:   

```bash
keybase login

./scripts/checkout-cover-letters.sh
./scripts/build-cover-letters.sh

xdg-open cover-letters/outputs/*.pdf
```

To update the cover-letter module do:

```bash
keybase login

./scripts/update-cover-letter-submodule.sh
```

Please note: This requires some additional [keybase](https://aur.archlinux.org/packages/keybase-bin/) packages (e.g. [KBFS](https://archlinux.org/packages/community/x86_64/kbfs/)).

## Copyright Notice

You are free to take the original *Awesome CV* project and modify it to create your own resume. Please don't use or distribute my resume without my permission, though!
