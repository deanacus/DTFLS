let autoLoadPath = has('nvim') ? '~/.config/nvim/autoload/plug.vim': '~/.vim/autoload/plug.vim'

" Install VimPlug if it doesn't exist
if (exists(autoLoadPath) == 1)
  echo 'installing'
  execute 'silent !curl -fLo ' . autoLoadPath . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * source $MYVIMRC
endif

" Install plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/yajs.vim'
call plug#end()

" Automatically install missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync
  autocmd VimEnter * source $MYVIMRC | q
endif


" Configure NERDTree

" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]']


" Configure ALE

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'jsx': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'json': ['prettier'],
\   'graphql': ['prettier'],
\   'markdown': ['prettier'],
\   'yaml': ['prettier'],
\}
