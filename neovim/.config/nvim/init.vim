
" Options

set encoding=utf-8

set textwidth=80 wrap linebreak showbreak=…
set nowrap
set tabstop=2 softtabstop=2 smarttab expandtab
set shiftwidth=2
set smartindent autoindent
set mouse=
"set updatetime=750

set nobackup noswapfile
set undofile undodir=~/.config/nvim/undodir undolevels=1000 undoreload=10000
set history=100

set title

set laststatus=2
set showcmd showmode ruler

set hlsearch
set incsearch

set wildmenu
set wildignorecase
set wildignore+=*.swp,*.pyc,*.bak,*.class,*.orig
set wildignore+=.git,.hg,.bzr,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.svg
set wildignore+=build/*,tmp/*,vendor/cache/*,bin/*,dist/*
set wildignore+=*node_modules/*,*/target/*

set number relativenumber numberwidth=3
set colorcolumn=80

set scrolloff=10

set spelllang=en_us,de
set spellsuggest=double,3
"set spellfile=~/.config/nvim/dict.custom.utf-8.add

set splitbelow splitright

" ⣿ ↪ ¬ ❯ ❮ ⋅
set listchars+=eol:¬
set listchars+=extends:…
set listchars+=nbsp:⋅
set listchars+=precedes:…
set listchars+=tab:\|\
set listchars+=trail:⋅

set synmaxcol=1024
set lazyredraw

set autoread
"set whichwrap+=<,>,h,l

set completeopt=menu,preview,noinsert

set formatprg=par-format

if executable('ag')
	set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
	set grepformat=%f:%l:%c:%m
endif

let g:lisp_rainbow = 1


" Env

if executable('go') == 1
	let $GOOS=substitute(call('system', ['go env GOOS']), '\n\+$', '', '')
	let $GOARCH=substitute(call('system', ['go env GOARCH']), '\n\+$', '', '')
endif


" Resources

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/color.vim
source ~/.config/nvim/statusline.vim
source ~/.config/nvim/plugins.vim

" Local config

if filereadable(expand('$HOME/.config/nvim/local.vim'))
	source $HOME/.config/nvim/local.vim
endif

