
if has('termguicolors')
  set termguicolors
endif

func! s:apply_color()
	colorscheme vrsl
endfunc

au VimEnter * call s:apply_color()

