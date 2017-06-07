set background=dark
highlight clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "nxt"

hi Boolean                                       guifg=#c0f033
hi cDefine                                       guifg=#ffff00
hi cInclude                                      guifg=#ffffff
hi Comment                                       guifg=#008080
hi Constant                                      guifg=#ffffff
hi Cursor                         guibg=#ffffff  guifg=#000000
hi CursorColumn                   guibg=#140500
hi CursorLine                     guibg=#101010
hi DiffAdd                        guibg=#333333  guifg=#ffff00
hi DiffChange                     guibg=#333333  guifg=#ffff00
hi DiffDelete                     guibg=#333333  guifg=#ffff00
hi DiffText                       guibg=#333333  guifg=#ffffff
hi Directory                      guibg=#000000  guifg=#ffffff
hi ErrorMsg                       guibg=#ff3333  guifg=#ffffff
hi FoldColumn                     guibg=#222222  guifg=#ff0000
hi Folded                         guibg=#111111  guifg=#c1f634
hi Function                                      guifg=#c1f634
hi Identifier                     guibg=#000000  guifg=#ddff80
hi IncSearch       gui=none       guibg=#bf3300  guifg=#000000
hi Keyword					                     guifg=#c0f033
hi LineNr                         guibg=#000000  guifg=#7c7c7c
hi MatchParen                     guibg=#000000  guifg=#ffff00
hi ModeMsg         gui=none       guibg=#000000  guifg=#ff4400
hi MoreMsg                        guibg=#000000  guifg=#ffff00
hi NonText                        guibg=#000000  guifg=#ffffff
hi Normal          gui=none       guibg=#000000  guifg=#ffffff
hi Number					                     guifg=#ff0000
hi Operator        gui=none                      guifg=#ffffff
hi PreProc         gui=none                      guifg=#ffffff
hi Question                                      guifg=#ffff00
hi Search          gui=none       guibg=#ff4400  guifg=#000000
hi SignColumn                     guibg=#111111  guifg=#ffffff
hi Special         gui=none       guibg=#000000  guifg=#ffffff
hi SpecialKey                     guibg=#000000  guifg=#ff4400
hi Statement       gui=none                      guifg=#c0f033
hi StatusLine      gui=none       guibg=#c0f033  guifg=#000000
hi StatusLineNC    gui=none       guibg=#444444  guifg=#000000
hi String          gui=none                      guifg=#7c7c7c
hi TabLine         gui=none       guibg=#555555  guifg=#000000
hi TabLineFill     gui=underline  guibg=#000000  guifg=#ffffff
hi TabLineSel      gui=none       guibg=#ff4400  guifg=#000000
hi Title           gui=none                      guifg=#ffffff
hi Todo            gui=none       guibg=#000000  guifg=#00AADD
hi Type            gui=none                      guifg=#ffffff
hi VertSplit       gui=none       guibg=#c0f033  guifg=#000000
hi Visual                         guibg=#c0f033  guifg=#000000
hi WarningMsg                     guibg=#888888  guifg=#000000

" php.vim
hi phpHereDoc                                    guifg=#7c7c7c
hi phpIdentifier				 guifg=#ddff80
hi phpIdentifierSimply                           guifg=#ddff80
hi phpVarSelector				 guifg=#ddff80

" python.vim
hi pythonRawString				 guifg=#ff0000
hi pythonPreCondit				 guifg=#c0f033
hi pythonFunction				 guifg=#ffffff
hi pythonNumber					 guifg=#ff0000
hi pythonSpaceError				 guifg=#101010
