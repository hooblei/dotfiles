
" vim!
set nocompatible

set backupdir=~/.vimtmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupcopy=yes
set directory=~/.vimtmp,~/.tmp,~/tmp,/var/tmp,/tmp

" if has('undofile')
set undodir=~/.vimtmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undofile
set undolevels=1000
set undoreload=10000
" endif

set title
" files to ignore for name completion etc
set wildignore=*.swp,*.bak,*.pyc,*.class

" gui opts
"
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Fixed\ 11
    endif
    set guioptions-=T
endif


" interface
"

if $TERM =~ '^screen' | set t_Co=256 | endif
if $TERM =~ '^rxvt-unicode' | set t_Co=256 | endif
if $TERM =~ '^xterm' | set t_Co=256 | endif

" pathogen
"
" https://github.com/tpope/vim-pathogen
" See bundle/Makefile for plugs and tasks
execute pathogen#infect()


syntax on

" enable local (per directory) .vimrc files
"set exrc
" disable unsafe commands in local .vimrc files
"set secure

if has("gui_macvim") || has("gui_vimr")
   set guifont=Fixed-9x15:h15
endif


" Special whitespace highligthing
" Note: MUST be inserted before colorsche setting
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

"set background=dark
colorscheme vrsl


filetype plugin indent on


" easymtion setup
"
" prefix default keybinding
let g:EasyMotion_leader_key = '<Leader>m'

" make .hy files a lisp
let g:lisp_rainbow = 1

" add list lcs=tab:>-,trail:x for tab/trailing space visuals for Makefiles

" show line numbers
set number
set tw=80
set nowrap " do not automatically wrap on load
set colorcolumn=80
highlight ColorColumn ctermbg=233
set relativenumber
set ttyfast
set listchars=tab:▸\ ,eol:¬
"set list


" show a status line on each window
set laststatus=2

" airline settings
"
"let g:airline_theme='wombat'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_powerline_fonts = 0
"let g:airline_section_c = '%f %#Error#%M%*'
"let g:airline_section_z = '%l/%L:%c %P'
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#bufferline#enabled = 0
"let g:airline#extensions#branch#enabled = 1
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.branch = '⎇ '
"let g:airline_symbols.paste = '❏'
"let g:airline_symbols.readonly = '☹'

hi User1 ctermfg=16  guifg=#c1c1c1  ctermbg=228  guibg=#87ffaf
hi User2 ctermfg=228 guifg=#87ffaf  ctermbg=234 guibg=#c1c1c1

function! Status(winnum)
    let st = ''
    let active = a:winnum == winnr()
    let bufnum = winbufnr(a:winnum)
    let modified = getbufvar(bufnum, '&modified')
    let readonly = getbufvar(bufnum, '&readonly')
    let head = ''


    function! Color(active, num, content)
        if a:active
            return '%' . a:num . '*' . a:content . '%*'
        else
            return a:content
        endif
    endfunction

    let fs = ' '
    let fs .= '%f '
    let fs .= (active && &paste) ? '❏ ' : ''
    let fs .= modified ? '+ ' : ''
    let fs .= readonly ? 'RO ' : ''
    let st .= Color(active, 1, fs)

    let st .= '%='

    let st .= Color(active, 2, ' %l/%L %3v ')

    return st
endfunction

function! s:RefreshStatus()
    for nr in range(1, winnr('$'))
        call setwinvar(nr, '&statusline', '%!Status(' . nr . ')')
    endfor
endfunction

augroup status
    au!
    au VimEnter,WinEnter,BufWinEnter * call <SID>RefreshStatus()
augroup END

augroup ft
    au!
    au BufRead,BufNewFile *.ini,*/.hgrc,*/.hg/hgrc setf ini
    au BufRead,BufNewFile *.hy setfiletype=lisp
    au BufRead,BufNewFile *.json setfiletype json
    au BufRead,BufNewFile *.qml setfiletype qml
    au BufRead,BufNewFile *.raml setfiletype yaml
augroup END
au BufRead,BufNewFile *.hy setfiletype lisp

augroup fs
    au!
    au BufRead,BufNewFile *.jinja,*.html,*.mako,*.jinja setlocal shiftwidth=2 tabstop=2

    au FileType make setlocal sw=8 ts=8 noet nocindent
    au FileType html setlocal sw=2 ts=2 sts=2 expandtab
    au FileType phtml setlocal sw=2 ts=2 sts=2 expandtab
    au FileType xhtml setlocal sw=2 ts=2 sts=2 expandtab
    au FileType jinja setlocal sw=2 ts=2 sts=2 expandtab
    au FileType mako setlocal sw=2 ts=2 sts=2 expandtab
    au FileType xml setlocal sw=2 ts=2 sts=2 expandtab
    au FileType json setlocal sw=2 ts=2 sts=2 expandtab
    au FileType sql setlocal sw=2 ts=2 sts=2 expandtab
    au FileType plpgsql setlocal sw=2 ts=2 sts=2 expandtab
    au FileType yaml setlocal sw=2 ts=2 sts=2 expandtab
    au FileType vue setlocal sw=2 ts=2 sts=2 expandtab
    au FileType css setlocal sw=2 ts=2 sts=2 expandtab
    au FileType scss setlocal sw=2 ts=2 sts=2 expandtab
augroup END

" display line,col in status line
set ruler

" display command and selection info in cmd line
set showcmd

" list 'wildmode' matches in status line
set wildmenu

" don't update the display while executing macros
set lazyredraw

" let me know what mode i'm in
set showmode

" highlight search things
set hlsearch

" start searching while typing
set incsearch

" re-read buffers if they where changed outside vim
set autoread

" try to set term title (how to set the title in screen?)
set title

" mute that beeps
set vb

" raise history
set history=100

" stay fast
set synmaxcol=1024

" mark change area
"set cpoptions+=$

" Keep 10 lines (top/bottom) for scope
set scrolloff=10

" set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" editing related stuff
"
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set smartindent
set autoindent

" line wrap
"
set wrap
set linebreak
set showbreak=…

" textformat
"
set formatprg=par-format

" mappings
"

" remap leader
let mapleader = ","
let g:mapleader = ","

" indent/outdent that keeps selection
vnoremap < <gv
vnoremap > >gv

" sort selection
vnoremap <leader>s :sort<CR>


nmap <leader>it "=strftime("%H:%M:%S")<CR>P
nmap <leader>id "=strftime("%Y-%m-%d")<CR>P
nmap <leader>ib "=strftime("%Y-%m-%dT%H:%M:%S")<CR>P

" redraw screen and clear search highlights
nmap <leader>lr :noh<CR>:redraw<CR>

" toggle paste mode
nmap <leader>pp :set paste!<CR>

" toggle line numbers
nmap <leader>ll :set nu!<CR>

" toggle line wrapping
"nmap <leader>ww :set invwrap<cr>:set wrap?<CR>

" create the directory that contains the file in the current buffer.
nmap <leader>md :!mkdir -p %:p:h<CR>

" retab current buffer
nmap <leader>rt :l,$retab<CR>

" open .vimrc
nmap <leader>erc :e $MYVIMRC<CR>

" source .vimrc
nmap <leader>src :so $MYVIMRC<CR>

" rescan tags (currently python only)
"nmap <leader>st :!ctags -R -f ~/.vim/tags/python.ctags /usr/lib/python2.6/<CR>

" close/delete current buffers at once
nmap <leader>bd :bufdo bd<CR>

" show/hide error list buf
nmap <leader>co :botright cope<CR>
nmap <leader>cq :botright ccl<CR>

" toggle spell
nmap <leader>s :set spell!<CR>

" ???
let g:miniBufExplMoreThanOne=1

" goto definition
map <silent><C-G> <C-]>

" tab switching
nmap <C-j> gT
nmap <C-k> gt

" Fast buffer/tab switches
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
"map <C-l> :tabn<CR>
"map <C-h> :tabp<CR>

" sessions
"nmap <F2> :mksession! ./.vimsession<CR>
"nmap <F3> :source ./.vimsession<CR>

" numbers.vim
nnoremap <F3> :NumbersToggle<CR>

" search for word under cursor
"nmap <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

"set sr fo=twa2q tw=79
im <C-B> <C-O>:setl sr! fo<C-R>=strpart("-+",&sr,1)<CR>=tc<CR>

" visual search
" search for current selection in visual mode
" http://amix.dk/blog/post/19334
"
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Basically you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> gv :call VisualSearch('gv')<CR>

" show hi type and linking
nmap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."), col("."), 1), "name") . '> trans<' . synIDattr(synID(line("."), col("."), 0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name") . ">"<CR>


" tag list
"nmap <F11> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
"let tlist_sql_settings = 'sql;P:package;t:table'


" command-t
"
let CommandTMaxHeight = 10

" tag scanner
"map <silent> <F6>:!ctags -R --exclude=.svn --exclude=.git --exclude=log *<CR>

" vimgrep
"
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated tags .git'
let Grep_Skip_Files = '*.pyc'


" neocomplcache
"
let g:NeoComplCache_EnableAtStartup = 1


" python
"
if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
endif

" PHP
"
" strip trailing whitespace in .php files
" Note: See whitespace highlighting
"autocmd BufWritePre *.php :%s/\s\+$//e



"
"
let g:sparkupExecuteMapping = '<c-h>'

" re-indent xml(F3) and JSON (F4) docs that are one lineres
"
"map <F3> :%s/>\s*</>\r</g<CR>:set ft=xml<CR>ggVG=
"map <F4> :%s/{/{\r/g<CR>:%s/}/\r}/g<CR>:%s/,/,\r/g<CR>:set ft=javascript<CR>ggVG=

" syntastic
"let g:syntastic_debug = 0
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 0
let g:syntastic_error_symbol = 'E'
let g:syntastic_warning_symbol = 'W'
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_highlighting = 1
""let g:syntastic_javascript_checkers=['jshint']
""let g:syntastic_javascript_jshint_conf = "/home/maresp/workbench/racc/js-sdk/.jshintrc"
"let g:syntastic_mode_map = { 'mode': 'active',
"                           \ 'active_filetypes': ['javascript'],
"                           \ 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_php_checkers=['php']
let g:syntastic_phpcs_disable = 1

" Override eslint with local version where necessary.
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
  let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
  let g:syntastic_javascript_eslint_exec = local_eslint
endif


" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file buffer<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" Writing
let g:vimroom_backgroud = '#00f5f6f6'
let g:vimroom_ctermbackground = '#00f5f6f6'


" vimwiki
let g:vimwiki_list = [{'path': '~/office/notes/', 'path_html': '~/office/notes-html/'}]


" SnipMate
let g:snips_author = "maresp"
let g:snippets_dir = "$HOME/.vim/snippets/"


" Error window
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" WM Graphviz
let g:WMGraphviz_output = "png"
let g:WMGraphviz_viewer = "feh"
nmap <leader>dcs :GraphvizCompile<cr>:GraphvizShow<CR>

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_map = '<c-i>'
let g:ctrlp_cmd = 'CtrlPMixed'

" GDB
let g:dbgPavimPort = 9900

" neocomplete
"
" Disable vim AutoComplPop
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1

" Go related stuff
"
let g:go_fmt_autosave = 0
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def-split)

" jsx in .js
let g:jsx_ext_required = 0

" trigger edit log
" autocmd BufWritePost * silent! exec "!curl -sfd " . shellescape("f=" .  expand("%:p") . "&h=" . hostname()) . " " . shellescape("http://localhost:8080/elog")
"autocmd BufWritePost * silent! exec "!curl --connect-timeout 2 -sfd " . shellescape("f=" .  expand("%:p") . "&h=" . hostname()) . " " . shellescape("http://elog.me.bobswill.net/elog")

