map <C-B> :NERDTreeToggle<CR>
noremap <space>\ :Files<CR>
noremap <space>] :Vista!!<CR>

noremap \1 1gt
noremap \2 2gt
noremap \3 3gt
noremap \4 4gt
noremap \5 5gt
noremap \6 6gt
noremap \7 7gt
noremap \8 8gt
noremap \9 9gt
noremap \0 :tablast<cr>

au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

inoremap <c-s> <esc>:w<CR>
