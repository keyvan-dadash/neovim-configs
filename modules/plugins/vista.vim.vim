function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista#executive#ctags#support_json_format = 1
let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']
let g:vista#render#ctags = 'default'
let g:vista#renderer#ctags = 'default'
let g:vista#renderer#default#vlnum_offset = 3
let g:vista#renderer#enable_icon = 1

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_icon_indent = ["▸ ", ""]


let g:vista_executive_for = {
  \ 'h': 'coc',
  \ 'hpp': 'coc',
  \ 'c': 'coc',
  \ 'cc': 'coc',
  \ 'cpp': 'coc',
  \ }


" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }