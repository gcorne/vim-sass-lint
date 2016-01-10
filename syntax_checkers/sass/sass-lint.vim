"============================================================================
"File:        sass_lint.vim
"Description: Sass style and syntax checker plugin for Syntastic
"Maintainer:  Gregory Cornelius <contact@gregorycornelius.com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"============================================================================
if exists('g:loaded_syntastic_sass_sass_lint_checker')
    finish
endif
let g:loaded_syntastic_sass_sass_lint_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_sass_sass_lint_IsAvailable() dict
    if !executable(self.getExec())
        return 0
    endif
    return syntastic#util#versionIsAtLeast(self.getVersion(), [1, 4])
endfunction

function! SyntaxCheckers_sass_sass_lint_GetLocList() dict

    " Use eslint compact format
    let makeprg = self.makeprgBuild({ 'args_before': '-v -f compact' })

    let errorformat =
        \ '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'

    let loclist = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'returns': [0, 1, 2, 65, 66] })

    return loclist
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'sass',
    \ 'name': 'sass_lint',
    \ 'exec': 'sass-lint' })

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
