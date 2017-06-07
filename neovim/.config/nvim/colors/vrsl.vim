
highlight clear
syntax reset
set background=dark
let g:colors_name = 'vrsl2'


function! s:C(group, fg, bg, attr)
  let l:attr = a:attr

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

let s:black = ['#000000', 16]
let s:gray0 = ['#1c1c1c', 234]
let s:gray1 = ['#303030', 236]
let s:gray2 = ['#444444', 238]
let s:gray3 = ['#6c6c6c', 242]
let s:gray4 = ['#808080', 244]
let s:gray5 = ['#949494', 246]
let s:gray6 = ['#a8a8a8', 248]
let s:gray7 = ["#bcbcbc", 250]
let s:gray8 = ["#d0d0d0", 252]
let s:gray9 = ["#e4e4e4", 254]
let s:white = ['#ffffff', 15]
let s:red = ['#ff0000', 204]
let s:green = ['#83b879', 114]
let s:yellow = ['#ddbd71', 221]
let s:blue = ['#76a2e1', 75]
let s:purple = ['#b183de', 141]
let s:cyan = ['#64c1d4', 44]
let s:orange = ['#db855d', 209]
let s:navy = ['#6d76d4', 61]
let s:gold = ['#fffe8f', 204]

let s:c_comment = ['#008787', 30]
let s:c_string = s:gray4
let s:c_keyword = ['#87ffaf', 121]
let s:c_number = ['#ff0000', 196]
let s:c_default = ['', '']
let s:c_none = ['none', 'none']

" Vim UI
call s:C('ColorColumn', '', s:gray0, '')
"call s:C('Cursor', s:gray2, s:gray5, '')
call s:C('CursorColumn', '', s:gray2, '')
call s:C('CursorLine', '', s:gray2, 'none')
call s:C('CursorLineNr', s:gray6, s:c_none, 'none')
call s:C('Directory', s:blue, '', '')
call s:C('DiffAdd', s:green, '', 'none')
call s:C('DiffChange', s:yellow, '', 'none')
call s:C('DiffDelete', s:red, '', 'none')
call s:C('DiffText', s:blue, s:gray2, 'none')
call s:C('ErrorMsg', s:red, s:gray1, 'bold')
call s:C('FoldColumn', s:gray4, s:gray1, '')
call s:C('Folded', s:gray3, s:gray1, '')
call s:C('IncSearch', s:yellow, '', '')
call s:C('LineNr', s:gray3, '', '')
call s:C('MatchParen', s:orange, s:c_none, 'bold')
call s:C('ModeMsg', s:green, '', '')
call s:C('MoreMsg', s:green, '', '')
call s:C('NonText', s:gray4, '', 'none')
"call s:C('Normal', s:gray5, s:gray1, 'none')
call s:C('Pmenu', s:gray1, s:c_keyword, '')
call s:C('PmenuSbar', '', s:gray2, '')
call s:C('PmenuSel', s:gray9, s:gray2, '')
call s:C('PmenuThumb', '', s:gray4, '')
call s:C('Question', s:blue, '', 'none')
call s:C('Search', s:gray1, s:orange, '')
call s:C('SignColumn', s:gray5, s:c_none, '')
call s:C('SpecialKey', s:gray4, '', '')
call s:C('SpellCap', s:blue, s:gray2, 'undercurl')
call s:C('SpellBad', s:red, s:gray2, 'undercurl')
call s:C('StatusLine', s:gray4, s:gray0, 'none')
call s:C('StatusLineNC', s:gray0, s:gray4, '')
call s:C('TabLine', s:gray4, s:gray2, 'none')
call s:C('TabLineFill', s:gray4, s:gray2, 'none')
call s:C('TabLineSel', s:yellow, s:gray3, 'none')
call s:C('Title', s:green, '', 'none')
call s:C('VertSplit', s:gray2, s:c_none, 'none')
call s:C('Visual', s:gray1, s:c_keyword, '')
call s:C('WarningMsg', s:red, '', '')
call s:C('WildMenu', s:gray1, s:c_keyword,	'')
call s:C('qfFileName', s:c_keyword, s:c_none,	'')
call s:C('User1', s:black, s:gold,	'')
call s:C('User2', s:gold, s:gray0,	'')


" Gerneric Syntax
call s:C('Boolean', s:c_keyword, '', '')
call s:C('Character', s:c_string, '', '')
call s:C('Comment', s:c_comment, '', '')
call s:C('Constant', s:white, '', '')
"call s:C('Delimiter', s:cyan, '', '')
call s:C('Define', s:purple, '', 'none')
call s:C('Error', s:red, s:gray1, 'bold')
call s:C('Float', s:c_number, '', '')
"call s:C('Function', s:c_keyword, '', '')
call s:C('Identifier', s:c_default, '', 'none')
call s:C('Include', s:c_keyword, '', '')
call s:C('Label', s:c_keyword, s:c_none, '')
call s:C('Macro', s:purple, '', '')
call s:C('Number', s:c_number, '', '')
call s:C('Operator', s:c_default, '', '')
call s:C('PreProc', s:cyan, '', '')
call s:C('Special', s:c_default, '', '')
call s:C('Statement', s:c_keyword, '', 'none')
call s:C('String', s:c_string, '', '')
call s:C('Structure', s:c_keyword, '', '')
call s:C('Todo', s:cyan, s:c_none, '')
call s:C('Type', s:c_default, '', 'none')
call s:C('Underlined', s:blue, '', 'underline')

" CSS
call s:C('cssAttrComma', s:purple, '', '')
call s:C('cssAttributeSelector', s:green, '', '')
call s:C('cssBraces', s:gray5, '', '')
call s:C('cssClassName', s:yellow, '', '')
call s:C('cssClassNameDot', s:yellow, '', '')
call s:C('cssFontDescriptor', s:purple, '', '')
call s:C('cssFunctionName', s:blue, '', '')
call s:C('cssIdentifier', s:blue, '', '')
call s:C('cssMediaType', s:orange, '', '')
call s:C('cssProp', s:gray5, '', '')
call s:C('cssSelectorOp', s:navy, '', '')
call s:C('cssSelectorOp2', s:navy, '', '')

" Git Commit
call s:C('gitcommitBranch', s:blue, '', '')
call s:C('gitcommitUnmerged', s:green, '', '')
call s:C('gitcommitUntrackedFile', s:cyan, '', '')
call s:C('gitcommitSelectedFile', s:green, '', '')
call s:C('gitcommitDiscardedFile', s:red, '', '')
call s:C('gitcommitUnmergedFile', s:yellow, '', '')
call s:C('gitcommitSelectedType', s:green, '', '')
call s:C('gitcommitDiscardedType', s:red, '', '')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" HTML
call s:C('htmlTag', s:cyan, '', '')
call s:C('htmlTagName', s:cyan, '', '')
call s:C('htmlEndTag', s:cyan, '', '')
call s:C("htmlSpecialTagName", s:cyan, '', '')
"call s:C('htmlLink', s:red, '', '')
call s:C('htmlTitle', s:gray5, '', '')
call s:C('htmlSpecialTagName', s:purple, '', '')

" Javascript
call s:C('javaScriptBraces', s:gray5, '', '')
call s:C('javaScriptNull', s:c_keyword, '', '')
call s:C('javaScriptIdentifier', s:c_keyword, '', '')
"call s:C('javaScriptNumber', s:orange, '', '')
call s:C('javaScriptRequire', s:c_keyword, '', '')
call s:C('javaScriptReserved', s:c_keyword, '', '')
hi link javaScriptNumber Number

" pangloss/vim-javascript
call s:C('jsArrowFunction', s:c_keyword, '', '')
call s:C('jsClassKeywords', s:purple, '', '')
call s:C('jsDocParam', s:green, '', '')
call s:C('jsDocTags', s:cyan, '', '')
call s:C('jsGlobalObjects', s:white, '', '')
call s:C('jsGlobalNodeObjects', s:white, '', '')
call s:C('jsNull', s:c_keyword, '', '')
call s:C('jsThis', s:c_keyword, '', '')
call s:C('jsUndefined', s:c_keyword, '', '')
hi link jsFunction Statement
hi link jsStorageClass Statement

" JSON
call s:C('jsonCommentError', s:red, '', 'reverse')
call s:C('jsonMissingCommaError', s:red, '', 'reverse')
call s:C('jsonNoQuotesError', s:red, '', 'reverse')
call s:C('jsonNumError', s:red, '', 'reverse')
call s:C('jsonStringSQError', s:red, '', 'reverse')
call s:C('jsonSemicolonError', s:red, '', 'reverse')

" Less
call s:C('lessAmpersand', s:purple, '', '')
call s:C('lessClassChar', s:yellow, '', '')
call s:C('lessCssAttribute', s:gray5, '', '')
call s:C('lessFunction', s:blue,  '', '')

" Makefile
call s:C('makeIdent', s:white, '', '')
call s:C('makeTarget', s:c_keyword, '', '')


" Markdown
"call s:C('markdownBold', s:orange,  '', 'bold')
call s:C('markdownCode', s:gray4, '', '')
call s:C('markdownCodeBlock', s:gray4, '', '')
call s:C('markdownCodeDelimiter', s:cyan, '', '')
call s:C('markdownHeadingDelimiter', s:green, '', '')
call s:C('markdownHeadingRule', s:gray4, '', '')
call s:C('markdownId', s:purple, '', '')
"call s:C('markdownItalic', s:blue, '', 'italic')
call s:C('markdownListMarker', s:navy, '', '')
call s:C('markdownOrderedListMarker', s:navy, '', '')
call s:C('markdownRule', s:gray4, '', '')
call s:C('markdownUrl', s:purple, '', '')
call s:C('markdownUrlTitleDelimiter', s:green, '', '')

" PHP
"call s:C('phpFunctions', s:c_keyword, '', '')
call s:C('phpMemberSelector', s:c_default, '', '')
call s:C('phpVarSelector', s:c_keyword, '', '')
hi link phpDefine Statement
hi link phpStorageClass Statement
hi link phpType Statement

" Python
call s:C('pythonBuiltin', s:c_keyword, '', '')
call s:C('pythonDecorator', s:c_default, '', '')
hi link pythonNumber Number

" Ruby
call s:C('rubyInterpolation', s:cyan, '', '')
call s:C('rubyInterpolationDelimiter', s:navy, '', '')
call s:C('rubyRegexp', s:cyan, '', '')
call s:C('rubyRegexpDelimiter', s:navy, '', '')
call s:C('rubyStringDelimiter', s:green, '', '')

" Sass
call s:C('sassAmpersand', s:purple, '', '')
call s:C('sassClassChar', s:yellow, '', '')

" SQL
hi link sqlKeyword Keyword

" Vim-Fugitive
call s:C('diffAdded', s:green, '', '')
call s:C('diffRemoved', s:red, '', '')

" Vim-Gittgutter
call s:C('GitGutterAdd', s:green, '', '')
call s:C('GitGutterChange', s:yellow, '', '')
call s:C('GitGutterChangeDelete', s:orange, '', '')
call s:C('GitGutterDelete', s:red, '', '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:C('xmlAttrib', s:yellow, '', '')
call s:C('xmlEndTag', s:blue, '', '')
call s:C('xmlTag', s:blue, '', '')
call s:C('xmlTagName', s:blue, '', '')

