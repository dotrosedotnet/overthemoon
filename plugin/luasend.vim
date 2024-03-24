" plugin/luasend.vim
if exists('g:loaded_luasend') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults
" command to run our plugin
command! Luasend lua require'luasend'.luasend()

let &cpo = s:save_cpo "and restore after
unlet s:save_cpo

let g:loaded_luasend = 1
