" Original
set number
set fenc=utf-8
set nobackup
set noswapfile
set cursorline
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch

" Shougo/dein
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')
call dein#add('preservim/nerdtree')
call dein#add('morhetz/gruvbox')
call dein#add('vim-airline/vim-airline')
call dein#add('jiangmiao/auto-pairs')
call dein#add('tpope/vim-surround')
call dein#add('sheerun/vim-polyglot')
call dein#add('junegunn/fzf')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('tyru/open-browser.vim')
call dein#end()
call dein#save_state()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" morhetz/gruvbox
set t_Co=256
set bg=dark
colorscheme gruvbox

" preservim/nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let g:NERDTreeMapUpdir='<C-u>'
let g:NERDTreeMapOpenSplit='<C-j>'
let g:NERDTreeMapOpenVsplit='<C-l>'
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOpen=1

" junegunn/fzf.vim
set rtp+=~/.fzf

" tyru/open-browser.vim
nmap us <Plug>(openbrowser-smart-search)
vmap us <Plug>(openbrowser-smart-search)
nmap ws <Plug>(openbrowser-search)
vmap ws <Plug>(openbrowser-search)
