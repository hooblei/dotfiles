" This scheme was created by CSApproxSnapshot
" on Wed, 22 Jul 2009

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=38 gui=NONE guibg=#000000 guifg=#00aadd
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#c0f033
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#c1f634
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=16 ctermfg=202 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=231 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=203 ctermfg=231 gui=NONE guibg=#ff3333 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#bf3300 guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=202 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#ffff00
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=16 ctermfg=202 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=244 gui=NONE guibg=#000000 guifg=#7c7c7c
    CSAHi phpHereDoc term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi phpIdentifier term=NONE cterm=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpIdentifierSimply term=NONE cterm=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpVarSelector term=NONE cterm=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#ddff80
    CSAHi pythonRawString term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#c0f033
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=NONE ctermbg=240 ctermfg=16 gui=NONE guibg=#555555 guifg=#000000
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=202 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=16 ctermfg=231 gui=underline guibg=#000000 guifg=#ffffff
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#140500 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=NONE guibg=#101010 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi cInclude term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#c0f033
    CSAHi cDefine term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=191 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#444444 guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=191 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Visual term=reverse cterm=NONE ctermbg=191 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=245 ctermfg=16 gui=NONE guibg=#888888 guifg=#000000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=233 ctermfg=191 gui=NONE guibg=#111111 guifg=#c1f634
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#008080
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=193 gui=NONE guibg=#000000 guifg=#ddff80
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#c0f033
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi pythonNumber term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=233 gui=NONE guibg=bg guifg=#101010
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#222222 guifg=#ff0000
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=59 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffChange term=bold cterm=NONE ctermbg=59 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffDelete term=bold cterm=bold ctermbg=59 ctermfg=226 gui=bold guibg=#333333 guifg=#ffff00
    CSAHi DiffText term=reverse cterm=bold ctermbg=59 ctermfg=231 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=233 ctermfg=231 gui=NONE guibg=#111111 guifg=#ffffff
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=45 gui=NONE guibg=#000000 guifg=#00aadd
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#c0f033
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#c1f634
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=16 ctermfg=208 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=255 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=203 ctermfg=255 gui=NONE guibg=#ff3333 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#bf3300 guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#ffff00
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=16 ctermfg=208 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=145 gui=NONE guibg=#000000 guifg=#7c7c7c
    CSAHi phpHereDoc term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi phpIdentifier term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpIdentifierSimply term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpVarSelector term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#ddff80
    CSAHi pythonRawString term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#c0f033
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=NONE ctermbg=102 ctermfg=16 gui=NONE guibg=#555555 guifg=#000000
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=16 ctermfg=255 gui=underline guibg=#000000 guifg=#ffffff
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#140500 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=NONE guibg=#101010 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi cInclude term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#c0f033
    CSAHi cDefine term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=227 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#444444 guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=227 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Visual term=reverse cterm=NONE ctermbg=227 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=245 ctermfg=16 gui=NONE guibg=#888888 guifg=#000000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=233 ctermfg=227 gui=NONE guibg=#111111 guifg=#c1f634
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#008080
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=229 gui=NONE guibg=#000000 guifg=#ddff80
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#c0f033
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
    CSAHi pythonNumber term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=233 gui=NONE guibg=bg guifg=#101010
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#222222 guifg=#ff0000
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=236 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffChange term=bold cterm=NONE ctermbg=236 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffDelete term=bold cterm=bold ctermbg=236 ctermfg=226 gui=bold guibg=#333333 guifg=#ffff00
    CSAHi DiffText term=reverse cterm=bold ctermbg=236 ctermfg=255 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=233 ctermfg=255 gui=NONE guibg=#111111 guifg=#ffffff
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=38 gui=NONE guibg=#000000 guifg=#00aadd
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#c0f033
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#c1f634
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=16 ctermfg=202 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=231 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=203 ctermfg=231 gui=NONE guibg=#ff3333 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=130 ctermfg=16 gui=NONE guibg=#bf3300 guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=202 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#ffff00
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=16 ctermfg=202 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=244 gui=NONE guibg=#000000 guifg=#7c7c7c
    CSAHi phpHereDoc term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi phpIdentifier term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpIdentifierSimply term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpVarSelector term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#ddff80
    CSAHi pythonRawString term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#c0f033
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=NONE ctermbg=240 ctermfg=16 gui=NONE guibg=#555555 guifg=#000000
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=202 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=16 ctermfg=231 gui=underline guibg=#000000 guifg=#ffffff
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#140500 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=233 ctermfg=fg gui=NONE guibg=#101010 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi cInclude term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#c0f033
    CSAHi cDefine term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=155 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#444444 guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=155 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Visual term=reverse cterm=NONE ctermbg=155 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=102 ctermfg=16 gui=NONE guibg=#888888 guifg=#000000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=233 ctermfg=155 gui=NONE guibg=#111111 guifg=#c1f634
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=30 gui=NONE guibg=bg guifg=#008080
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=192 gui=NONE guibg=#000000 guifg=#ddff80
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#c0f033
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
    CSAHi pythonNumber term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=233 gui=NONE guibg=bg guifg=#101010
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#222222 guifg=#ff0000
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=236 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffChange term=bold cterm=NONE ctermbg=236 ctermfg=226 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffDelete term=bold cterm=bold ctermbg=236 ctermfg=226 gui=bold guibg=#333333 guifg=#ffff00
    CSAHi DiffText term=reverse cterm=bold ctermbg=236 ctermfg=231 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=233 ctermfg=231 gui=NONE guibg=#111111 guifg=#ffffff
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=22 gui=NONE guibg=#000000 guifg=#00aadd
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#c0f033
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#c1f634
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=79 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff3333 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=48 ctermfg=16 gui=NONE guibg=#bf3300 guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=64 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=16 ctermfg=76 gui=bold guibg=#000000 guifg=#ffff00
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff4400
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=82 gui=NONE guibg=#000000 guifg=#7c7c7c
    CSAHi phpHereDoc term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7c7c7c
    CSAHi phpIdentifier term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpIdentifierSimply term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#ddff80
    CSAHi phpVarSelector term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#ddff80
    CSAHi pythonRawString term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonPreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#c0f033
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=67 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=84 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=NONE ctermbg=81 ctermfg=16 gui=NONE guibg=#555555 guifg=#000000
    CSAHi TabLineSel term=bold cterm=NONE ctermbg=64 ctermfg=16 gui=NONE guibg=#ff4400 guifg=#000000
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=16 ctermfg=79 gui=underline guibg=#000000 guifg=#ffffff
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#140500 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#101010 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi cInclude term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#c0f033
    CSAHi cDefine term=NONE cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
    CSAHi StatusLine term=reverse,bold cterm=NONE ctermbg=60 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=80 ctermfg=16 gui=NONE guibg=#444444 guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=60 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Visual term=reverse cterm=NONE ctermbg=60 ctermfg=16 gui=NONE guibg=#c0f033 guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=83 ctermfg=16 gui=NONE guibg=#888888 guifg=#000000
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=60 gui=NONE guibg=#111111 guifg=#c1f634
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=16 ctermfg=76 gui=NONE guibg=#000000 guifg=#ffff00
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#008080
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Special term=bold cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
    CSAHi Identifier term=underline cterm=NONE ctermbg=16 ctermfg=61 gui=NONE guibg=#000000 guifg=#ddff80
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#c0f033
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
    CSAHi pythonNumber term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#101010
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#222222 guifg=#ff0000
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=80 ctermfg=76 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffChange term=bold cterm=NONE ctermbg=80 ctermfg=76 gui=NONE guibg=#333333 guifg=#ffff00
    CSAHi DiffDelete term=bold cterm=bold ctermbg=80 ctermfg=76 gui=bold guibg=#333333 guifg=#ffff00
    CSAHi DiffText term=reverse cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#333333 guifg=#ffffff
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#111111 guifg=#ffffff
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
endif

if 1
    delcommand CSAHi
endif
