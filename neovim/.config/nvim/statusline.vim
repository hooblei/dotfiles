
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

