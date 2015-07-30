set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" plugin for Ctrl+P Sublime style fuzzy file search
Plugin 'kien/ctrlp.vim'

" solarized theme
Plugin 'altercation/vim-colors-solarized'

" Autopairs for match brackets and quotes
Plugin 'jiangmiao/auto-pairs'

" plugin for surrounding
Plugin 'tpope/vim-surround'

" add support for repeating custom plugins
Plugin 'tpope/vim-repeat'

" sublime style completion
Plugin 'Valloric/YouCompleteMe'

" dustjs syntax highlighting
Plugin 'jimmyhchan/dustjs.vim'

" tree view
Plugin 'scrooloose/nerdtree'

" coffeescript support
Plugin 'kchmck/vim-coffee-script'

" add git functionality to vim
Plugin 'tpope/vim-fugitive'

" git gutter support
Plugin 'airblade/vim-gitgutter'

" emmet support
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" auto update vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set tabstop=2
set shiftwidth=2
set smartindent
" set expandtab
set smarttab

" status line at bottom of window
set modeline
set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v][%p%%]\ [%L]

" show line numbers
" set number

syntax on
if has("unix")
  let s:uname = system("uname -s")
  " *Unix stuff here

  if s:uname == "Darwin\n"
    " Mac specific stuff here
		let g:solarized_termcolors=256
		set t_Co=256 
  else
    " Linux specific stuff here
		let g:solarized_termcolors=256
		set t_Co=256 
  endif
endif

set background=dark
colorscheme solarized
set nowrap

" better searching
set incsearch
set ignorecase
set smartcase

" keymappings for saving in terminal
nnoremap <c-s> :update<cr>
inoremap <c-s> <esc>:update<cr>a
vnoremap <c-s> :<bs><bs><bs><bs><bs>update<cr>

" keymappings for switching betweek screens
nnoremap <c-h> <esc><c-w>h
nnoremap <c-j> <esc><c-w>j
nnoremap <c-k> <esc><c-w>k
nnoremap <c-l> <esc><c-w>l

vnoremap <c-h> <esc><c-w>h
vnoremap <c-j> <esc><c-w>j
vnoremap <c-k> <esc><c-w>k
vnoremap <c-l> <esc><c-w>l

inoremap <c-h> <esc><c-w>h
inoremap <c-j> <esc><c-w>j
inoremap <c-k> <esc><c-w>k
inoremap <c-l> <esc><c-w>l

" ctrl-c and ctrl-v mappings
vnoremap <c-c> "*y
vnoremap <c-v> "*p
inoremap <c-v> <esc>"*pi

" indent file
nnoremap <c-i> mmggVG='m 

" file type mappings
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
