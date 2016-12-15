if exists("g:loaded_splash_julia")
  finish
endif
let g:loaded_splash_julia = 1

let s:save_cpo = &cpo
set cpo&vim

autocmd BufNewFile,BufRead *.jl set filetype=julia
autocmd filetype julia call splash#show(expand('<sfile>:h:h') . '/src/julia-tan-aa.txt')

let &cpo = s:save_cpo
unlet s:save_cpo
