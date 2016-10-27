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

3. Enable the `sasslint` checker in your `.vimrc`

```vimL
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
```

## Using with a config file

By default, `vim-sass-lint` will look for `.sass-lint.yml` in a parent directory of the file being checked. If found, it will use that config.

Alternatively, a config file can be specified by using a buffer or global variable. The most common case is probably to add the path to the config file to your `.vimrc`

```vimL
let g:sass_lint_config = '/path/to/config.yml'
```
