" Vim color file
" Name: vsrl

" Init
"
set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "vrsl"


" color name mappings
"
let s:c016_Grey0 = [16, "#000000"]
let s:c017_NavyBlue = [17, "#00005f"]
let s:c018_DarkBlue = [18, "#000087"]
let s:c019_Blue3 = [19, "#0000af"]
let s:c020_Blue3 = [20, "#0000d7"]
let s:c021_Blue1 = [21, "#0000ff"]
let s:c022_DarkGreen = [22, "#005f00"]
let s:c023_DeepSkyBlue4 = [23, "#005f5f"]
let s:c024_DeepSkyBlue4 = [24, "#005f87"]
let s:c025_DeepSkyBlue4 = [25, "#005faf"]
let s:c026_DodgerBlue3 = [26, "#005fd7"]
let s:c027_DodgerBlue2 = [27, "#005fff"]
let s:c028_Green4 = [28, "#008700"]
let s:c029_SpringGreen4 = [29, "#00875f"]
let s:c030_Turquoise4 = [30, "#008787"]
let s:c031_DeepSkyBlue3 = [31, "#0087af"]
let s:c032_DeepSkyBlue3 = [32, "#0087d7"]
let s:c033_DodgerBlue1 = [33, "#0087ff"]
let s:c034_Green3 = [34, "#00af00"]
let s:c035_SpringGreen3 = [35, "#00af5f"]
let s:c036_DarkCyan = [36, "#00af87"]
let s:c037_LightSeaGreen = [37, "#00afaf"]
let s:c038_DeepSkyBlue2 = [38, "#00afd7"]
let s:c039_DeepSkyBlue1 = [39, "#00afff"]
let s:c040_Green3 = [40, "#00d700"]
let s:c041_SpringGreen3 = [41, "#00d75f"]
let s:c042_SpringGreen2 = [42, "#00d787"]
let s:c043_Cyan3 = [43, "#00d7af"]
let s:c044_DarkTurquoise = [44, "#00d7d7"]
let s:c045_Turquoise2 = [45, "#00d7ff"]
let s:c046_Green1 = [46, "#00ff00"]
let s:c047_SpringGreen2 = [47, "#00ff5f"]
let s:c048_SpringGreen1 = [48, "#00ff87"]
let s:c049_MediumSpringGreen = [49, "#00ffaf"]
let s:c050_Cyan2 = [50, "#00ffd7"]
let s:c051_Cyan1 = [51, "#00ffff"]
let s:c052_DarkRed = [52, "#5f0000"]
let s:c053_DeepPink4 = [53, "#5f005f"]
let s:c054_Purple4 = [54, "#5f0087"]
let s:c055_Purple4 = [55, "#5f00af"]
let s:c056_Purple3 = [56, "#5f00d7"]
let s:c057_BlueViolet = [57, "#5f00ff"]
let s:c058_Orange4 = [58, "#5f5f00"]
let s:c059_Grey37 = [59, "#5f5f5f"]
let s:c060_MediumPurple4 = [60, "#5f5f87"]
let s:c061_SlateBlue3 = [61, "#5f5faf"]
let s:c062_SlateBlue3 = [62, "#5f5fd7"]
let s:c063_RoyalBlue1 = [63, "#5f5fff"]
let s:c064_Chartreuse4 = [64, "#5f8700"]
let s:c065_DarkSeaGreen4 = [65, "#5f875f"]
let s:c066_PaleTurquoise4 = [66, "#5f8787"]
let s:c067_SteelBlue = [67, "#5f87af"]
let s:c068_SteelBlue3 = [68, "#5f87d7"]
let s:c069_CornflowerBlue = [69, "#5f87ff"]
let s:c070_Chartreuse3 = [70, "#5faf00"]
let s:c071_DarkSeaGreen4 = [71, "#5faf5f"]
let s:c072_CadetBlue = [72, "#5faf87"]
let s:c073_CadetBlue = [73, "#5fafaf"]
let s:c074_SkyBlue3 = [74, "#5fafd7"]
let s:c075_SteelBlue1 = [75, "#5fafff"]
let s:c076_Chartreuse3 = [76, "#5fd700"]
let s:c077_PaleGreen3 = [77, "#5fd75f"]
let s:c078_SeaGreen3 = [78, "#5fd787"]
let s:c079_Aquamarine3 = [79, "#5fd7af"]
let s:c080_MediumTurquoise = [80, "#5fd7d7"]
let s:c081_SteelBlue1 = [81, "#5fd7ff"]
let s:c082_Chartreuse2 = [82, "#5fff00"]
let s:c083_SeaGreen2 = [83, "#5fff5f"]
let s:c084_SeaGreen1 = [84, "#5fff87"]
let s:c085_SeaGreen1 = [85, "#5fffaf"]
let s:c086_Aquamarine1 = [86, "#5fffd7"]
let s:c087_DarkSlateGray2 = [87, "#5fffff"]
let s:c088_DarkRed = [88, "#870000"]
let s:c089_DeepPink4 = [89, "#87005f"]
let s:c090_DarkMagenta = [90, "#870087"]
let s:c091_DarkMagenta = [91, "#8700af"]
let s:c092_DarkViolet = [92, "#8700d7"]
let s:c093_Purple = [93, "#8700ff"]
let s:c094_Orange4 = [94, "#875f00"]
let s:c095_LightPink4 = [95, "#875f5f"]
let s:c096_Plum4 = [96, "#875f87"]
let s:c097_MediumPurple3 = [97, "#875faf"]
let s:c098_MediumPurple3 = [98, "#875fd7"]
let s:c099_SlateBlue1 = [99, "#875fff"]
let s:c100_Yellow4 = [100, "#878700"]
let s:c101_Wheat4 = [101, "#87875f"]
let s:c102_Grey53 = [102, "#878787"]
let s:c103_LightSlateGrey = [103, "#8787af"]
let s:c104_MediumPurple = [104, "#8787d7"]
let s:c105_LightSlateBlue = [105, "#8787ff"]
let s:c106_Yellow4 = [106, "#87af00"]
let s:c107_DarkOliveGreen3 = [107, "#87af5f"]
let s:c108_DarkSeaGreen = [108, "#87af87"]
let s:c109_LightSkyBlue3 = [109, "#87afaf"]
let s:c110_LightSkyBlue3 = [110, "#87afd7"]
let s:c111_SkyBlue2 = [111, "#87afff"]
let s:c112_Chartreuse2 = [112, "#87d700"]
let s:c113_DarkOliveGreen3 = [113, "#87d75f"]
let s:c114_PaleGreen3 = [114, "#87d787"]
let s:c115_DarkSeaGreen3 = [115, "#87d7af"]
let s:c116_DarkSlateGray3 = [116, "#87d7d7"]
let s:c117_SkyBlue1 = [117, "#87d7ff"]
let s:c118_Chartreuse1 = [118, "#87ff00"]
let s:c119_LightGreen = [119, "#87ff5f"]
let s:c120_LightGreen = [120, "#87ff87"]
let s:c121_PaleGreen1 = [121, "#87ffaf"]
let s:c122_Aquamarine1 = [122, "#87ffd7"]
let s:c123_DarkSlateGray1 = [123, "#87ffff"]
let s:c124_Red3 = [124, "#af0000"]
let s:c125_DeepPink4 = [125, "#af005f"]
let s:c126_MediumVioletRed = [126, "#af0087"]
let s:c127_Magenta3 = [127, "#af00af"]
let s:c128_DarkViolet = [128, "#af00d7"]
let s:c129_Purple = [129, "#af00ff"]
let s:c130_DarkOrange3 = [130, "#af5f00"]
let s:c131_IndianRed = [131, "#af5f5f"]
let s:c132_HotPink3 = [132, "#af5f87"]
let s:c133_MediumOrchid3 = [133, "#af5faf"]
let s:c134_MediumOrchid = [134, "#af5fd7"]
let s:c135_MediumPurple2 = [135, "#af5fff"]
let s:c136_DarkGoldenrod = [136, "#af8700"]
let s:c137_LightSalmon3 = [137, "#af875f"]
let s:c138_RosyBrown = [138, "#af8787"]
let s:c139_Grey63 = [139, "#af87af"]
let s:c140_MediumPurple2 = [140, "#af87d7"]
let s:c141_MediumPurple1 = [141, "#af87ff"]
let s:c142_Gold3 = [142, "#afaf00"]
let s:c143_DarkKhaki = [143, "#afaf5f"]
let s:c144_NavajoWhite3 = [144, "#afaf87"]
let s:c145_Grey69 = [145, "#afafaf"]
let s:c146_LightSteelBlue3 = [146, "#afafd7"]
let s:c147_LightSteelBlue = [147, "#afafff"]
let s:c148_Yellow3 = [148, "#afd700"]
let s:c149_DarkOliveGreen3 = [149, "#afd75f"]
let s:c150_DarkSeaGreen3 = [150, "#afd787"]
let s:c151_DarkSeaGreen2 = [151, "#afd7af"]
let s:c152_LightCyan3 = [152, "#afd7d7"]
let s:c153_LightSkyBlue1 = [153, "#afd7ff"]
let s:c154_GreenYellow = [154, "#afff00"]
let s:c155_DarkOliveGreen2 = [155, "#afff5f"]
let s:c156_PaleGreen1 = [156, "#afff87"]
let s:c157_DarkSeaGreen2 = [157, "#afffaf"]
let s:c158_DarkSeaGreen1 = [158, "#afffd7"]
let s:c159_PaleTurquoise1 = [159, "#afffff"]
let s:c160_Red3 = [160, "#d70000"]
let s:c161_DeepPink3 = [161, "#d7005f"]
let s:c162_DeepPink3 = [162, "#d70087"]
let s:c163_Magenta3 = [163, "#d700af"]
let s:c164_Magenta3 = [164, "#d700d7"]
let s:c165_Magenta2 = [165, "#d700ff"]
let s:c166_DarkOrange3 = [166, "#d75f00"]
let s:c167_IndianRed = [167, "#d75f5f"]
let s:c168_HotPink3 = [168, "#d75f87"]
let s:c169_HotPink2 = [169, "#d75faf"]
let s:c170_Orchid = [170, "#d75fd7"]
let s:c171_MediumOrchid1 = [171, "#d75fff"]
let s:c172_Orange3 = [172, "#d78700"]
let s:c173_LightSalmon3 = [173, "#d7875f"]
let s:c174_LightPink3 = [174, "#d78787"]
let s:c175_Pink3 = [175, "#d787af"]
let s:c176_Plum3 = [176, "#d787d7"]
let s:c177_Violet = [177, "#d787ff"]
let s:c178_Gold3 = [178, "#d7af00"]
let s:c179_LightGoldenrod3 = [179, "#d7af5f"]
let s:c180_Tan = [180, "#d7af87"]
let s:c181_MistyRose3 = [181, "#d7afaf"]
let s:c182_Thistle3 = [182, "#d7afd7"]
let s:c183_Plum2 = [183, "#d7afff"]
let s:c184_Yellow3 = [184, "#d7d700"]
let s:c185_Khaki3 = [185, "#d7d75f"]
let s:c186_LightGoldenrod2 = [186, "#d7d787"]
let s:c187_LightYellow3 = [187, "#d7d7af"]
let s:c188_Grey84 = [188, "#d7d7d7"]
let s:c189_LightSteelBlue1 = [189, "#d7d7ff"]
let s:c190_Yellow2 = [190, "#d7ff00"]
let s:c191_DarkOliveGreen1 = [191, "#d7ff5f"]
let s:c192_DarkOliveGreen1 = [192, "#d7ff87"]
let s:c193_DarkSeaGreen1 = [193, "#d7ffaf"]
let s:c194_Honeydew2 = [194, "#d7ffd7"]
let s:c195_LightCyan1 = [195, "#d7ffff"]
let s:c196_Red1 = [196, "#ff0000"]
let s:c197_DeepPink2 = [197, "#ff005f"]
let s:c198_DeepPink1 = [198, "#ff0087"]
let s:c199_DeepPink1 = [199, "#ff00af"]
let s:c200_Magenta2 = [200, "#ff00d7"]
let s:c201_Magenta1 = [201, "#ff00ff"]
let s:c202_OrangeRed1 = [202, "#ff5f00"]
let s:c203_IndianRed1 = [203, "#ff5f5f"]
let s:c204_IndianRed1 = [204, "#ff5f87"]
let s:c205_HotPink = [205, "#ff5faf"]
let s:c206_HotPink = [206, "#ff5fd7"]
let s:c207_MediumOrchid1 = [207, "#ff5fff"]
let s:c208_DarkOrange = [208, "#ff8700"]
let s:c209_Salmon1 = [209, "#ff875f"]
let s:c210_LightCoral = [210, "#ff8787"]
let s:c211_PaleVioletRed1 = [211, "#ff87af"]
let s:c212_Orchid2 = [212, "#ff87d7"]
let s:c213_Orchid1 = [213, "#ff87ff"]
let s:c214_Orange1 = [214, "#ffaf00"]
let s:c215_SandyBrown = [215, "#ffaf5f"]
let s:c216_LightSalmon1 = [216, "#ffaf87"]
let s:c217_LightPink1 = [217, "#ffafaf"]
let s:c218_Pink1 = [218, "#ffafd7"]
let s:c219_Plum1 = [219, "#ffafff"]
let s:c220_Gold1 = [220, "#ffd700"]
let s:c221_LightGoldenrod2 = [221, "#ffd75f"]
let s:c222_LightGoldenrod2 = [222, "#ffd787"]
let s:c223_NavajoWhite1 = [223, "#ffd7af"]
let s:c224_MistyRose1 = [224, "#ffd7d7"]
let s:c225_Thistle1 = [225, "#ffd7ff"]
let s:c226_Yellow1 = [226, "#ffff00"]
let s:c227_LightGoldenrod1 = [227, "#ffff5f"]
let s:c228_Khaki1 = [228, "#ffff87"]
let s:c229_Wheat1 = [229, "#ffffaf"]
let s:c230_Cornsilk1 = [230, "#ffffd7"]
let s:c231_Grey100 = [231, "#ffffff"]
let s:c232_Grey3 = [232, "#080808"]
let s:c233_Grey7 = [233, "#121212"]
let s:c234_Grey11 = [234, "#1c1c1c"]
let s:c235_Grey15 = [235, "#262626"]
let s:c236_Grey19 = [236, "#303030"]
let s:c237_Grey23 = [237, "#3a3a3a"]
let s:c238_Grey27 = [238, "#444444"]
let s:c239_Grey30 = [239, "#4e4e4e"]
let s:c240_Grey35 = [240, "#585858"]
let s:c241_Grey39 = [241, "#626262"]
let s:c242_Grey42 = [242, "#6c6c6c"]
let s:c243_Grey46 = [243, "#767676"]
let s:c244_Grey50 = [244, "#808080"]
let s:c245_Grey54 = [245, "#8a8a8a"]
let s:c246_Grey58 = [246, "#949494"]
let s:c247_Grey62 = [247, "#9e9e9e"]
let s:c248_Grey66 = [248, "#a8a8a8"]
let s:c249_Grey70 = [249, "#b2b2b2"]
let s:c250_Grey74 = [250, "#bcbcbc"]
let s:c251_Grey78 = [251, "#c6c6c6"]
let s:c252_Grey82 = [252, "#d0d0d0"]
let s:c253_Grey85 = [253, "#dadada"]
let s:c254_Grey89 = [254, "#e4e4e4"]
let s:c015_White = [15, "#ffffff"]
let s:cNONE = ["NONE", "NONE"]


let s:is_gui_running = has("gui_running")

" sets the highlighting for the given group
"
fun! s:C(grp, fg, bg, attr)
    if empty(a:attr)
        let l:attr = "NONE"
    else
        let l:attr = a:attr
    endif

    if s:is_gui_running
        exec "hi ".a:grp." guifg=".a:fg[1]." guibg=".a:bg[1]." gui=".l:attr
    else
        exec "hi ".a:grp." ctermfg=".a:fg[0]." ctermbg=".a:bg[0]." cterm=".l:attr
    endif
endfun

let s:cKwd = s:c121_PaleGreen1
let s:cNum = s:c196_Red1
let s:cStr = s:c244_Grey50


if s:is_gui_running
    call s:C("Normal", s:c231_Grey100, s:c016_Grey0, '')
    call s:C("Cursor", s:c239_Grey30, s:c231_Grey100, '')
endif

"call s:C("Normal", s:cNONE, s:cNONE, '')
call s:C("Comment", s:c030_Turquoise4, s:cNONE, '')
call s:C("Operator", s:c231_Grey100, s:cNONE, '')
call s:C("Keyword", s:cKwd, s:cNONE, '')
call s:C("Special", s:c231_Grey100, s:cNONE, '')
call s:C("Identifier", s:c200_Magenta2, s:cNONE, '')
call s:C("String", s:cStr, s:cNONE, '')
call s:C("Number", s:cNum, s:cNONE, '')
call s:C("Float", s:cNum, s:cNONE, '')
call s:C("Boolean", s:cKwd, s:cNONE, '')
call s:C("SpecialKey", s:c202_OrangeRed1, s:cNONE, '')
call s:C("Todo", s:c038_DeepSkyBlue2, s:cNONE, '')
call s:C("Constant", s:c231_Grey100, s:cNONE, '')
call s:C("Statement", s:cKwd, s:cNONE, '')
call s:C("Function", s:cKwd, s:cNONE, '')
call s:C("Conditional", s:cKwd, s:cNONE, '')
call s:C("Identifier", s:cKwd, s:cNONE, '')
call s:C("Label", s:cKwd, s:cNONE, '')
"call s:C("Exception", s:c200_Magenta2, s:cNONE, '')
call s:C("MatchParen", s:c227_LightGoldenrod1, s:cNONE, '')
call s:C("Structure", s:cKwd, s:cNONE, '')
call s:C("Include", s:cKwd, s:cNONE, '')
call s:C("Type", s:c231_Grey100, s:cNONE, '')
call s:C("Underlined", s:c153_LightSkyBlue1, s:cNONE, 'underline')
call s:C("Delimiter", s:cKwd, s:cNONE, '')
call s:C("PreProc", s:cKwd, s:cNONE, '')
hi! link StringDelimiter String

" ui
"
call s:C("ErrorMsg", s:c197_DeepPink2, s:cNONE, '')
call s:C("NonText", s:c240_Grey35, s:cNONE, '')
call s:C("Visual", s:c016_Grey0, s:cKwd, '')
call s:C("LineNr", s:c240_Grey35, s:cNONE, '')
call s:C("CursorLineNr", s:c228_Khaki1, s:cNONE, '')
call s:C("Question", s:c226_Yellow1, s:cNONE, '')
"call s:C("StatusLineNC", s:c016_Grey0, s:c238_Grey27, '')
call s:C("StatusLineNC", s:c240_Grey35, s:c234_Grey11, '')
"call s:C("StatusLine", s:c016_Grey0, s:c120_LightGreen, '')
call s:C("StatusLine", s:c250_Grey74, s:c234_Grey11, '')
call s:C("VertSplit", s:c240_Grey35, s:cNONE, '')
call s:C("WarningMsg", s:c214_Orange1, s:cNONE, '')
call s:C("WildMenu", s:c016_Grey0, s:c231_Grey100, '')
call s:C("Folded", s:cKwd, s:cNONE, '')
call s:C("FoldColumn", s:c200_Magenta2, s:cNONE, '')
call s:C("Search", s:c016_Grey0, s:c202_OrangeRed1, '')
call s:C("IncSearch", s:c016_Grey0, s:c166_DarkOrange3, '')
call s:C("Error", s:cNONE, s:c196_Red1, '')
call s:C("Warning", s:c200_Magenta2, s:c196_Red1, '')
call s:C("Directory", s:c200_Magenta2, s:cNONE, '')
call s:C("SignColumn", s:cNONE, s:cNONE, '')
call s:C("qfFileName", s:cKwd, s:cNONE, '')


" spell
"
call s:C("SpellBad", s:c196_Red1, s:cNONE, 'underline')

" python
"
call s:C("pythonFunction", s:c231_Grey100, s:cNONE, '')
call s:C("pythonDecorator", s:c231_Grey100, s:cNONE, '')
hi! link pythonNumber Number
hi! link pythonStatement Statement
hi! link pythonRawString String

" php (crap)
"
call s:C("phpIdentifier", s:c231_Grey100, s:cNONE, '')
call s:C("phpParent", s:c231_Grey100, s:cNONE, '')
call s:C("phpMemberSelector", s:c231_Grey100, s:cNONE, '')
hi! link phpType Keyword
hi! link phpException Keyword
hi! link phpStorageClass Keyword
hi! link phpHereDoc String
hi! link phpQuoteSingle String
hi! link phpQuoteDouble String

" javascript
"
call s:C("javaScriptBraces", s:c231_Grey100, s:cNONE, '') 
call s:C("javaScriptParans", s:c231_Grey100, s:cNONE, '') 
hi! link javaScriptNumber Number

" html
"
call s:C("htmlTag", s:c081_SteelBlue1, s:cNONE, '')
call s:C("htmlTagName", s:c081_SteelBlue1, s:cNONE, '')
call s:C("htmlEndTag", s:c081_SteelBlue1, s:cNONE, '')
call s:C("htmlSpecialTagName", s:c081_SteelBlue1, s:cNONE, '')

" css
"
call s:C("cssBraces", s:c231_Grey100, s:cNONE, '')

" clean up
"
delf s:C

