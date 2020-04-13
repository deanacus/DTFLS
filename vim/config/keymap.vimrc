" =============================================== "
" Keymappings                                     "
" =============================================== "

" Leader key
let mapleader=','

" Clear search by typing `,,`
nnoremap <leader>, :let @/=''<CR>:noh<CR>|

" convert tabs to spaces and reindent with `,r`
nnoremap <silent> <leader>r :retab<CR> gg=G

" Make Ctrl + s save files, even though it shouldn't
nnoremap <silent> <C-s> :w<CR>

" toggle wrapping with `,w`
nnoremap <silent> <leader>w :set wrap! wrap?<CR>|

" toggle NerdTree with Ctrl+b
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Indent line with <Tab> in normal mode
nnoremap <Tab> >>

" Unindent with Shift Tab in normal mode
nnoremap <S-Tab> <<

" Unindent with Shift Tab in insert mode, too
inoremap <S-Tab> <esc><< i

" show/select buffer
nnoremap <leader>b :ls<CR>:buffer<space>|

" trim whitespace
nnoremap <silent> <leader>trim :%s/\s\+$//e<CR>|

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
" set wildmode=list:longest,list:full
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<Tab>"
"     else
"         return "\<C-p>"
"     endif
" endfunction
" inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
" inoremap <S-Tab> <C-n>

" Things I'm not sure I want yet

" show diff
" nnoremap <leader>d :w !diff % -<CR>|

" reload .vimrc
" nnoremap <leader>s :source $MYVIMRC<CR>|

