
" Idea by Michael Naumann
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


let g:mapleader = ","
let g:maplocalleader='\\'


map <C-j> :bnext<CR>
map <C-k> :bprev<CR>

nmap <leader>bd :bufdo bd<CR>
nmap <leader>erc :e $MYVIMRC<CR>
nmap <leader>ll :set number!<CR>
nmap <leader>lr :noh<CR>:redraw<CR>
nmap <leader>pp :set paste!<CR>
nmap <leader>s :set spell!<CR>
nmap <leader>src :so $MYVIMRC<CR>
nmap <leader>r :!!<CR>

nmap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."), col("."), 1), "name") . '> trans<' . synIDattr(synID(line("."), col("."), 0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name") . ">"<CR>

" indent/outdent that keeps current selection
vnoremap < <gv
vnoremap > >gv

" sort current selection
vnoremap <leader>s :sort<CR>

" Error window
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" tag scanner
"map <silent> <F6>:!ctags -R --exclude=.svn --exclude=.git --exclude=log *<CR>

" neovim terminal
:tnoremap <Esc> <C-\><C-n>
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-l> <C-\><C-n><C-w>l
 
