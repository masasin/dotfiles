" Enable keyboard shortcuts and clicking {{{
let mapleader=","
nnoremap <leader>n :call ToggleNumber()<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <space> za
set mouse=a
vmap <C-C> "+yi
vmap <C-X> "+c
vmap <C-V> c<ESC>"+p
imap <C-V> <C-r><C-o>+
" }}}
" Filetype detection {{{
filetype plugin indent on
syntax on
" }}}
" Font and colours {{{
set gfn=DejaVu\ Sans\ Mono\ 9
set background=dark
colorscheme solarized
" }}}
" Set decent indentation defaults {{{
set autoindent
set expandtab
set tabstop=4
let &softtabstop=&tabstop
let &shiftwidth=&tabstop
set smartindent
set smarttab
" }}}
" Folding {{{
set foldmethod=indent
set foldnestmax=100
set foldlevel=10
" }}}
" Numbering and position {{{
set number
set relativenumber
set cursorline
" }}}
" Bottom bar {{{
set ruler
set showcmd
set cmdheight=2
set laststatus=2
" }}}
" Scrolling {{{
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
" }}}
" Smart search {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
" }}}
" Usability {{{
set autochdir
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set hidden
set history=1000
set noerrorbells
set visualbell
set t_vb=
" }}}
" Handle Japanese files properly {{{
set fileencodings=iso-2022-jp,euc-jp,cp932,utf8,default,latin1
" }}}
" Speed {{{
set lazyredraw
" }}}
"Completion {{{
set wildmode=list:longest
set wildmenu
" }}}
" Mappings {{{
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
" }}}
" Persistent undo {{{
set nobackup
set writebackup
set undolevels=1000
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
endif
set undodir=~/.vim/backups
set undofile
" }}}
" Autogroups {{{
augroup Binary
    au!
 	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif   
augroup END
" }}}
" Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" }}}
" Plugins {{{
call plug#begin("~/.vim/plugged")
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

    " NerdTree {{{
    map <F2> :NERDTreeToggle<CR>
    " }}}
" }}}
" vim:foldmethod=marker:foldlevel=0
