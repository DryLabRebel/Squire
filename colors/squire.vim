" Name: squire
" Maintainer: Geoff English <geoff_anthony@hotmail.com>
" Last Updated: (09-03-2023)
" Website:      https://github.com/DryLabRebel/Squire
" License:      MIT

" Inspired by apprentice, it explicitly sets a few extra
" options in markdown, and has a slightly higher contrast against the
" background, for working in more well lit environments

" To Do:
" Work through the md hi options and figure out what each one does!
" Add a screenshot to the README for python/R/c something else
" Finalize your colour palette
" Update the colour palette list
" Set the 8-16 bit colour palette

" Colour palette

" 15
" 30
" 66
" 67
" 74
" 103
" 108
" 138
" 145
" 150
" 221
" 230
" 234
" 242
" 246
" 250
" 255

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "squire"

" hardcoded colours :

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")

  hi Normal                         ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE
  hi Visual                         ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE

  set background=dark

  hi Constant                       ctermfg=138   ctermbg=NONE  cterm=NONE            guifg=#af8787 guibg=NONE    gui=NONE
  hi Search                         ctermfg=NONE  ctermbg=16    cterm=NONE            guifg=NONE    guibg=#000000 gui=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=236   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi CurSearch                      ctermfg=NONE  ctermbg=236   cterm=NONE            guifg=NONE    guibg=#303030 gui=NONE
  hi WildMenu                       ctermfg=NONE  ctermbg=236   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=169   cterm=NONE            guifg=NONE    guibg=#d75faf gui=NONE
  hi Special                        ctermfg=108   ctermbg=NONE  cterm=NONE            guifg=#87af87 guibg=NONE    gui=NONE
  hi Comment                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi StatusLine                     ctermfg=234   ctermbg=246   cterm=NONE            guifg=#1c1c1c guibg=#949494 gui=NONE
  hi StatusLineNC                   ctermfg=246   ctermbg=234   cterm=NONE            guifg=#949494 guibg=#1c1c1c gui=NONE
  hi StatusLineTerm                 ctermfg=234   ctermbg=246   cterm=NONE            guifg=#1c1c1c guibg=#949494 gui=NONE
  hi StatusLineTermNC               ctermfg=234   ctermbg=246   cterm=NONE            guifg=#1c1c1c guibg=#949494 gui=NONE
  hi Statement                      ctermfg=74    ctermbg=NONE  cterm=NONE            guifg=#5fafd7 guibg=NONE    gui=NONE
  hi Type                           ctermfg=30    ctermbg=NONE  cterm=NONE            guifg=#008787 guibg=NONE    gui=NONE
  hi LineNr                         ctermfg=242   ctermbg=NONE  cterm=NONE            guifg=#6c6c6c guibg=NONE    gui=NONE
  hi LineNrAbove                    ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi LineNrBelow                    ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi CursorLineNr                   ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi CursorLineSign                 ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi String                         ctermfg=150   ctermbg=NONE  cterm=NONE            guifg=#afd787 guibg=NONE    gui=NONE 
  hi WarningMsg                     ctermfg=221   ctermbg=88    cterm=NONE            guifg=#ffd75f guibg=#87005f gui=NONE 
  hi ColorColumn                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Conceal                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi CursorIM                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi CursorColumn                   ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi CursorLine                     ctermfg=NONE  ctermbg=16    cterm=NONE            guifg=NONE    guibg=#000000 gui=NONE
  hi Directory                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffAdd                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffChange                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffDelete                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffText                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi EndOfBuffer                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Error			    ctermfg=15    ctermbg=88    cterm=NONE            guifg=#eeeeee guibg=#87005f gui=NONE 
  hi ErrorMsg                       ctermfg=15    ctermbg=88    cterm=NONE            guifg=#eeeeee guibg=#87005f gui=NONE 
  hi VertSplit                      ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi Folded                         ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi FoldColumn                     ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi CursorLineFold                 ctermfg=246   ctermbg=238   cterm=NONE            guifg=#949494 guibg=#444444 gui=NONE
  hi SignColumn                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE
  hi ModeMsg                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi MoreMsg                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi NonText                        ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi Pmenu                          ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE
  hi PmenuSel                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi PmenuSbar                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi PmenuThumb                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Question                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi QuickFixLine                   ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi SpecialKey                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi TabLine                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi TabLineFill                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi TabLineSel                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi MoreMsg                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi Function                       ctermfg=103   ctermbg=NONE  cterm=NONE            guifg=#8787af guibg=NONE    gui=NONE
  hi Identifier                     ctermfg=67    ctermbg=NONE  cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE
  hi Title                          ctermfg=255   ctermbg=NONE  cterm=bold            guifg=#eeeeee guibg=NONE    gui=bold

  hi! link Terminal Normal
  hi! link PreProc Special
  hi! link Define Special
  hi! link Include Special
  hi! link Macro Special
  hi! link PreCondit Special
  hi! link Operator Statement
  hi! link Number Constant
  hi! link Character Constant
  hi! link Float Constant
  hi! link Boolean Constant
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link Typedef Type
  hi! link htmlLink Function

" Markdown

  hi markdownHeadingDelimiter       ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE    gui=NONE
  hi MarkdownItalic                 ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE    gui=NONE
  hi markdownBold                   ctermfg=74    ctermbg=NONE  cterm=NONE             guifg=#5fafd7 guibg=NONE    gui=NONE
  hi markdownBoldItalic             ctermfg=74    ctermbg=NONE  cterm=bold             guifg=#5fafd7 guibg=NONE    gui=bold
  hi markdownCode                   ctermfg=145   ctermbg=NONE  cterm=NONE             guifg=#afafaf guibg=NONE    gui=NONE
  hi markdownBlockquote             ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE    gui=NONE

  hi! link markdownHeadingRule markdownHeadingDelimiter
  hi! link markdownItalicDelimiter markdownItalic
  hi! link markdownBoldDelimiter markdownBold
  hi! link markdownBoldItalicDelimiter markdownBoldItalic
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownCode

" markdownAutomaticLink  markdownError  markdownEscape  markdownFootnote  markdownFootnoteDefinition  

" markdownHeadingRule  markdownId
" markdownIdDeclaration  markdownIdDelimiter  markdownLinkText  markdownListMarker  markdownOrderedListMarker  markdownRule  markdownStrike  markdownStrikeDelimiter  markdownUrl
" markdownUrlDelimiter  markdownUrlTitle  markdownUrlTitleDelimiter


elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal                         ctermfg=white     ctermbg=NONE  cterm=NONE
  hi Terminal                       ctermfg=white     ctermbg=NONE  cterm=NONE

  set background=dark

endif

" Comment		any comment
" SpecialComment	special things inside a comment

" String		a string constant: "this is a string"

" Constant		any constant
" Character		a character constant: 'c', '\n'
" Number		a number constant: 234, 0xff
" Boolean		a boolean constant: TRUE, false
" Float			a floating point constant: 2.3e10

" Identifier		any variable name
" Function		function name (also: methods for classes)

" Statement		any statement
" Conditional		if, then, else, endif, switch, etc.
" Repeat		for, do, while, etc.
" Label			case, default, etc.
" Operator		"sizeof", "+", "*", etc.
" Keyword		any other keyword
" Exception		try, catch, throw

" PreProc		generic Preprocessor
" Include		preprocessor #include
" Define		preprocessor #define
" Macro			same as Define
" PreCondit		preprocessor #if, #else, #endif, etc.

" Special		any special symbol
" SpecialChar		special character in a constant
" Tag			you can use CTRL-] on this
" Delimiter		character that needs attention
" Debug			debugging statements

" Underlined		text that stands out, HTML links

" Ignore		left blank, hidden  |hl-Ignore|


" Todo			anything that needs extra attention; mostly the
" 			keywords TODO FIXME and XXX

