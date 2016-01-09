Sass Lint Syntastic Checker
===========================

A VIM [sass-lint](https://github.com/sasstools/sass-lint) [Syntastic](https://github.com/scrooloose/syntastic) syntax checker

## Getting Started

1. Install `sass-lint` via `npm install -g sass-lint` (requires Node.js)
2. Enable the `sass_lint` checker in your `.vimrc`

```
let g:syntastic_sass_checkers=["sass_lint"]
```
