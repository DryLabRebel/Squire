" Name: squire
" Maintainer: Geoff English <geoff_anthony@hotmail.com>
" Last Updated: (29-03-2023)
" Website:      https://github.com/DryLabRebel/Squire
" License:      MIT

" Inspired by apprentice, it explicitly sets a few extra
" options in markdown, and has a slightly higher contrast against the
" background, for working in more well lit environments

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "squire"

" hardcoded colours :

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")

  set background=dark

  hi Normal                         ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE
  hi Visual                         ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE
  hi Constant                       ctermfg=138   ctermbg=NONE  cterm=NONE            guifg=#af8787 guibg=NONE    gui=NONE
  hi Search                         ctermfg=NONE  ctermbg=16    cterm=NONE            guifg=NONE    guibg=#000000 gui=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=236   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=169   cterm=NONE            guifg=NONE    guibg=#d75faf gui=NONE
  hi Special                        ctermfg=108   ctermbg=NONE  cterm=NONE            guifg=#87af87 guibg=NONE    gui=NONE
  hi Comment                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi StatusLine                     ctermfg=234   ctermbg=246   cterm=NONE            guifg=#1c1c1c guibg=#949494 gui=NONE
  hi StatusLineNC                   ctermfg=246   ctermbg=234   cterm=NONE            guifg=#949494 guibg=#1c1c1c gui=NONE
  hi Statement                      ctermfg=74    ctermbg=NONE  cterm=NONE            guifg=#5fafd7 guibg=NONE    gui=NONE
  hi Type                           ctermfg=30    ctermbg=NONE  cterm=NONE            guifg=#005f5f guibg=NONE    gui=NONE
  hi LineNr                         ctermfg=242   ctermbg=NONE  cterm=NONE            guifg=#6c6c6c guibg=NONE    gui=NONE
  hi LineNrAbove                    ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi String                         ctermfg=150   ctermbg=NONE  cterm=NONE            guifg=#afd787 guibg=NONE    gui=NONE 
  hi WarningMsg                     ctermfg=221   ctermbg=88    cterm=NONE            guifg=#ffd75f guibg=#87005f gui=NONE 
  hi CursorLine                     ctermfg=NONE  ctermbg=232   cterm=NONE            guifg=NONE    guibg=#080808 gui=NONE
  hi Error			    ctermfg=15    ctermbg=88    cterm=NONE            guifg=#eeeeee guibg=#87005f gui=NONE 
  hi VertSplit                      ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi EndOfBuffer                    ctermfg=250   ctermbg=234   cterm=NONE            guifg=#bcbcbc guibg=#1c1c1c gui=NONE
  hi CursorLineFold                 ctermfg=246   ctermbg=238   cterm=NONE            guifg=#949494 guibg=#444444 gui=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE
  hi Pmenu                          ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi MoreMsg                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi Function                       ctermfg=103   ctermbg=NONE  cterm=NONE            guifg=#8787af guibg=NONE    gui=NONE
  hi Identifier                     ctermfg=67    ctermbg=NONE  cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE
  hi Title                          ctermfg=255   ctermbg=NONE  cterm=bold            guifg=#eeeeee guibg=NONE    gui=bold
  hi TabLineSel                     ctermfg=230   ctermbg=237   cterm=NONE            guifg=#ffffd7 guibg=#444444 gui=NONE
  hi TabLine                        ctermfg=244   ctermbg=237   cterm=NONE            guifg=#808080 guibg=#444444 gui=NONE
  hi Delimiter                      ctermfg=67    ctermbg=NONE  cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE

" Not yet assigned

  hi SignColumn                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi ColorColumn                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Conceal                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi CursorIM                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi CursorColumn                   ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffAdd                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffChange                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffDelete                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi DiffText                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi PmenuSel                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi PmenuSbar                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi PmenuThumb                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Question                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi QuickFixLine                   ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi SpecialKey                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE

  hi Conditional                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Debug                          ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Exception                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Ignore                         ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Label                          ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Repeat                         ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi SpecialChar                    ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Tag                            ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Underlined                     ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Menu                           ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi MessageWindow                  ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Scrollbar                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Tooltip                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE

  hi! link Terminal Normal

  hi! link Boolean Constant
  hi! link Character Constant
  hi! link CurSearch IncSearch
  hi! link CursorLineNr LineNrAbove
  hi! link CursorLineSign VertSplit
  hi! link Define Special
  hi! link Directory Type
  hi! link ErrorMsg Error
  hi! link Float Constant
  hi! link FoldColumn VertSplit
  hi! link Folded VertSplit
  hi! link HtmlLink Type
  hi! link Include Special
  hi! link Keyword Function
  hi! link LineNrBelow LineNrAbove
  hi! link Macro Special
  hi! link MoreMsg Comment
  hi! link ModeMsg Comment
  hi! link NonText VertSplit
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreProc Special
  hi! link PreCondit Special
  hi! link SpecialComment Special
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLine
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link TabLineFill TabLine
  hi! link Typedef Type
  hi! link Todo Special
  hi! link WildMenu IncSearch

" Markdown

  hi markdownHeadingDelimiter       ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE       gui=NONE
  hi MarkdownItalic                 ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE       gui=NONE
  hi markdownBold                   ctermfg=74    ctermbg=NONE  cterm=NONE             guifg=#5fafd7 guibg=NONE       gui=NONE
  hi markdownBoldItalic             ctermfg=74    ctermbg=NONE  cterm=bold             guifg=#5fafd7 guibg=NONE       gui=bold
  hi markdownCode                   ctermfg=145   ctermbg=NONE  cterm=NONE             guifg=#afafaf guibg=NONE       gui=NONE
  hi markdownRule                   ctermfg=74    ctermbg=NONE  cterm=NONE             guifg=#5fafd7 guibg=NONE       gui=NONE

  hi! link markdownHeadingRule markdownHeadingDelimiter
  hi! link markdownBlockquote markdownHeadingDelimiter
  hi! link markdownListMarker markdownHeadingDelimiter
  hi! link markdownOrderedListMarker markdownHeadingDelimiter
  hi! link markdownStrike markdownItalic
  hi! link markdownStrikeDelimiter markdownItalic
  hi! link markdownId markdownBold
  hi! link markdownUrlDelimiter markdownBold
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownCode
  hi! link markdownError Error
  hi! link markdownAutomaticLink Constant
  hi! link markdownEscape Special
  hi! link markdownUrl Constant
  hi! link markdownUrlTitleDelimiter Type
  hi! link markdownIdDeclaration Type
  hi! link markdownLinkText Function
  hi! link markdownFootnote Function
  hi! link markdownFootnoteDefinition Function
  hi! link markdownUrlTitle String
  hi! link markdownIdDelimiter Title

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal                         ctermfg=white     ctermbg=NONE  cterm=NONE
  hi Terminal                       ctermfg=white     ctermbg=NONE  cterm=NONE

  set background=dark

endif

" Conditional		if, then, else, endif, switch, etc.
" Repeat		for, do, while, etc.
" Label			case, default, etc.
" Exception		try, catch, throw
" SpecialChar		special character in a constant
" Tag			you can use CTRL-] on this
" Debug			debugging statements
" Underlined		text that stands out, HTML links
" Ignore		left blank, hidden  |hl-Ignore|
" Todo			anything that needs extra attention; mostly the
" 			keywords TODO FIXME and XXX
