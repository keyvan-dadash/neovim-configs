function! Dot(path)
  return "~/.config/nvim/" . a:path
endfunction

for file in split(glob(Dot("modules/*.vim")), "\n")
  execute "source" file
endfor

if filereadable("~/.nvim.local.vim")
  source ~/.nvim.local.vim
endif

" select the color scheme
colorscheme dracula

" vim floaterm
highlight FloatermBorder guifg=cyan

hi Pmenu ctermfg=15 ctermbg=61 cterm=NONE guifg=#f8f8f2 guibg=#646e96 gui=NONE
hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold guifg=#282a36 guibg=#50fa7b gui=NONE

au BufRead,BufNewFile *.go set filetype=go
au filetype go inoremap <buffer> . .<C-x><C-o>