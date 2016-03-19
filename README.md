Sass Lint Syntastic Checker
===========================

A VIM [sass-lint](https://github.com/sasstools/sass-lint) [Syntastic](https://github.com/scrooloose/syntastic) syntax checker

## Getting Started

1. Install `sass-lint` via `npm install -g sass-lint` (requires Node.js)
2. Install the `vim-sass-lint` and the [syntastic](https://github.com/scrooloose/syntastic) plugin. I use [Vundle](https://github.com/VundleVim/Vundle.vim) to simplify my plugin management, but this plugin should work with any vim plugin management tool.

To install with Vundle, follow the Vundle install instructions and then add `syntastic` and `vim-sass-lint` to your `.vimrc`.

```vimL
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'
```

3. Enable the `sass_lint` checker in your `.vimrc`

```vimL
let g:syntastic_sass_checkers=["sass_lint"]
```
