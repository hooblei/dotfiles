
func! s:define_plugins()
  " See: https://github.com/junegunn/vim-plug
  "
  " Check out interesting plugs ...
  " https://github.com/ElmCast/elm-vim or https://github.com/lambdatoast/elm.vim
  " https://github.com/terryma/vim-multiple-cursors
  " https://github.com/luochen1990/rainbow
  " https://github.com/kopischke/vim-stay
  " https://github.com/MattesGroeger/vim-bookmarks
  " https://github.com/mattn/emmet-vim
  "
  " Disabled
  " lambdalisue/vim-pyenv
  " mxw/vim-jsx
  " Lokaltog/vim-easymotion
  " tpope/vim-fugitive
  " zah/nimrod.vim
  " wlangstroth/vim-racket
  " pydoc.vim
  " Shutnik/jshint2.vim
  "
  call plug#begin('~/.config/nvim/plugins')

  Plug 'airblade/vim-gitgutter'
  "Plug 'benekastah/neomake'
  Plug 'bling/vim-bufferline'
  "Plug 'digitaltoad/vim-pug'
  "Plug 'docunext/closetag.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'fatih/vim-go', { 'tag': '*' }
  Plug 'elmcast/elm-vim'
  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'guns/vim-sexp'
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'groenewege/vim-less'
  "Plug 'hylang/vim-hy'
  "Plug 'jceb/vim-orgmode'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'kassio/neoterm'
  Plug 'kien/rainbow_parentheses.vim'
  "Plug 'krisajenkins/vim-pipe'
  Plug 'krisajenkins/vim-postgresql-syntax'
  Plug 'leafgarland/typescript-vim'
  Plug 'mileszs/ack.vim'
  Plug 'mattn/emmet-vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'pearofducks/ansible-vim'
  Plug 'posva/vim-vue'
  Plug 'qpkorr/vim-bufkill'
  Plug 'Raimondi/delimitMate'
  "Plug 'rstacruz/sparkup'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "Plug 'Shougo/neocomplete.vim'
  "Plug 'Shougo/unite.vim'
  "Plug 'sjl/tslime.vim'
  Plug 'sophacles/vim-bundle-mako'
  "Plug 'tommcdo/vim-exchange'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-fireplace'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sexp-mappings-for-regular-people'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-erlang/erlang-motions.vim'
  Plug 'vim-erlang/vim-erlang-compiler'
  Plug 'vim-erlang/vim-erlang-omnicomplete'
  Plug 'vim-erlang/vim-erlang-runtime'
  Plug 'w0rp/ale'
  "Plug 'vim-erlang/vim-erlang-skeletons'
  "Plug 'vim-erlang/vim-erlang-tags'
  "Plug 'vim-scripts/dbext.vim'
  Plug 'zchee/deoplete-go', { 'do': 'make' }

  call plug#end()
endfunc

func! s:configure_plugins()
  " rstacruz/sparkup
  let g:sparkupExecuteMapping = '<c-h>'

  " airblade/vim-gitgutter
  set signcolumn=yes

  " Lokaltog/vim-easymotion
  "   prefix default keybinding
  let g:EasyMotion_leader_key = '<Leader>m'

  " Shougo/neocomplete.vim
  "   Disable vim AutoComplPop
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
  let g:NeoComplCache_EnableAtStartup = 1

  " benekastah/neomake
  "let g:neomake_open_list = 2
  "let g:neomake_verbose = 3
  "let g:neomake_logfile = '/tmp/neomake-error.log'
  "autocmd! BufWritePost,BufEnter *.go Neomake

  " fatih/vim-go
  let g:go_fmt_autosave = 0
  "au FileType go nmap <Leader>i <Plug>(go-info)
  "au FileType go nmap <Leader>gd <Plug>(go-doc)
  "au FileType go nmap <Leader>r <Plug>(go-run)
  "au FileType go nmap <Leader>b <Plug>(go-build)
  "au FileType go nmap <Leader>t <Plug>(go-test)
  "au FileType go nmap gd <Plug>(go-def-split)

  "" Shougo/unite
  "let g:unite_source_history_yank_enable = 1
  "call unite#filters#matcher_default#use(['matcher_fuzzy'])
  ""nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec:!<cr>
  "nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file buffer<cr>
  "nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
  "nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
  "nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
  "nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>
  "" Custom mappings for the unite buffer
  "autocmd FileType unite call s:unite_settings()
  "function! s:unite_settings()
  "  " Play nice with supertab
  "  let b:SuperTabDisabled=1
  "  " Enable navigation with control-j and control-k in insert mode
  "  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  "  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  "endfunction

  " ale
  let g:ale_sign_column_always = 1
  let g:ale_sign_error = '⚑' "☈☠
  let g:ale_sign_warning = '⚐' "?¿☡⚠
  let g:ale_linters = {
        \   'javascript': ['eslint'],
        \}

  " Shougo/deoplete.nvim
  let g:deoplete#enable_at_startup = 1
	let g:deoplete#disable_auto_complete = 1
  "let g:deoplete#enable_smart_case = 1
	"let g:deoplete#enable_profile = 1
  "call deoplete#enable_logging('DEBUG', 'deoplete.log')
  "call deoplete#custom#set('go', 'debug_enabled', 1)
	"inoremap <silent><expr> <C-p>
  "    \ pumvisible() ? "\<C-n>" :
  "    \ deoplete#mappings#manual_complete()
	inoremap <silent><expr> <TAB>
				\ pumvisible() ? "\<C-n>" :
				\ <SID>check_back_space() ? "\<TAB>" :
				\ deoplete#mappings#manual_complete()
	function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
	endfunction"}}}

  " zchee/deoplete-go
  let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'
	let g:deoplete#sources#go#use_cache = 1
	let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/${GOOS}_${GOARCH}'
	let g:deoplete#sources#go#package_dot = 1

  "" scrooloose/syntastic
  ""let g:syntastic_debug = 0
  "let g:syntastic_always_populate_loc_list = 0
  "let g:syntastic_auto_loc_list = 1
  "let g:syntastic_check_on_open = 1
  "let g:syntastic_check_on_wq = 0
  "let g:syntastic_enable_balloons = 0
  "let g:syntastic_error_symbol = 'E'
  "let g:syntastic_warning_symbol = 'W'
  "let g:syntastic_quiet_messages = {'level': 'warnings'}
  "let g:syntastic_echo_current_error = 1
  "let g:syntastic_enable_highlighting = 1
  """let g:syntastic_javascript_checkers=['jshint']
  """let g:syntastic_javascript_jshint_conf = "/home/maresp/workbench/racc/js-sdk/.jshintrc"
  ""let g:syntastic_mode_map = { 'mode': 'active',
  ""                           \ 'active_filetypes': ['javascript'],
  ""                           \ 'passive_filetypes': [] }
  "let g:syntastic_javascript_checkers = ['eslint']
  "let g:syntastic_php_checkers=['php']
  "let g:syntastic_phpcs_disable = 1
  "" Override eslint with local version where necessary.
  "let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
  "if matchstr(local_eslint, "^\/\\w") == ''
  "  let local_eslint = getcwd() . "/" . local_eslint
  "endif
  "if executable(local_eslint)
  "  let g:syntastic_javascript_eslint_exec = local_eslint
  "endif

  "" vim-slime
  "let g:slime_target = "tmux"
  "let g:slime_paste_file = "$HOME/.slime_paste"

  " kassio/neoterm
  let g:neoterm_position = 'horizontal'
  let g:neoterm_automap_keys = ',tt'
  "nnoremap <silent> <f10> :TREPLSendFile<cr>
  "nnoremap <silent> <f9> :TREPLSendLine<cr>
  "vnoremap <silent> <f9> :TREPLSendSelection<cr>
  " Useful maps
  " hide/close terminal
  nnoremap <silent> ,th :call neoterm#close()<cr>
  " clear terminal
  nnoremap <silent> ,tl :call neoterm#clear()<cr>
  " kills the current job (send a <c-c>)
  nnoremap <silent> ,tc :call neoterm#kill()<cr>

  " Git commands
  command! -nargs=+ Tg :T git <args>

  " tpope/vim-fireplace
  nnoremap <silent> ,eo :Eval<cr>

  " junegunn/fzf.vim
  nmap ; :Buffers<CR>
  nmap <leader>f :Files<CR>
  nmap <leader>t :Tags<CR>

  " mattn/emmet-vim
  " use emmet onlin in html/css files
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
  " map emmet ladder to <c-m>,
  "let g:user_emmet_leader_key='<C-M>'
endfunc


if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call s:define_plugins()
call s:configure_plugins()

filetype plugin indent on

