" Name: squire
" Maintainer: Geoff English <geoff_anthony@hotmail.com>
" Last Updated: (11-04-2023) 
" Website:      https://github.com/DryLabRebel/Squire
" License:      MIT

" Inspired by apprentice, it explicitly sets a few extra
" options in markdown, and has a slightly higher contrast against the
" background, for working in more well lit environments
" Also apparently becoming a lot more generally green/blue ⎺\_(⍨)_/⎺

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "squire"

" hardcoded colours :

if ($TERM =~ "256" || &t_Co >= 256) || has("gui_running")

  set background=dark

  hi Normal                         ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE

  hi Visual                         ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=243   cterm=NONE            guifg=NONE    guibg=#767676 gui=NONE
  hi Constant                       ctermfg=174   ctermbg=NONE  cterm=NONE            guifg=#d78787 guibg=NONE    gui=NONE
  hi Search                         ctermfg=NONE  ctermbg=16    cterm=NONE            guifg=NONE    guibg=#000000 gui=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=236   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=#d75faf gui=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=#af5fd7 gui=NONE
  hi Special                        ctermfg=108   ctermbg=NONE  cterm=NONE            guifg=#87af87 guibg=NONE    gui=NONE
  hi Comment                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi StatusLine                     ctermfg=232   ctermbg=65    cterm=NONE            guifg=#080808 guibg=#5f875f gui=NONE
  hi StatusLineNC                   ctermfg=65    ctermbg=232   cterm=NONE            guifg=#5f875f guibg=#080808 gui=NONE
  hi Statement                      ctermfg=110   ctermbg=NONE  cterm=NONE            guifg=#87afd7 guibg=NONE    gui=NONE
  hi Type                           ctermfg=73    ctermbg=NONE  cterm=NONE            guifg=#5fafaf guibg=NONE    gui=NONE
  hi LineNr                         ctermfg=242   ctermbg=NONE  cterm=NONE            guifg=#6c6c6c guibg=NONE    gui=NONE
  hi LineNrAbove                    ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi String                         ctermfg=150   ctermbg=NONE  cterm=NONE            guifg=#afd787 guibg=NONE    gui=NONE 
  hi WarningMsg                     ctermfg=221   ctermbg=88    cterm=NONE            guifg=#ffd75f guibg=#87005f gui=NONE 
  hi CursorLine                     ctermfg=NONE  ctermbg=232   cterm=NONE            guifg=NONE    guibg=#080808 gui=NONE
  hi Error			    ctermfg=230   ctermbg=88    cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE 
  hi VertSplit                      ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi EndOfBuffer                    ctermfg=250   ctermbg=234   cterm=NONE            guifg=#bcbcbc guibg=#1c1c1c gui=NONE
  hi CursorLineFold                 ctermfg=246   ctermbg=238   cterm=NONE            guifg=#949494 guibg=#444444 gui=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=238   cterm=NONE            guifg=NONE    guibg=#444444 gui=NONE
  hi Function                       ctermfg=103   ctermbg=NONE  cterm=NONE            guifg=#8787af guibg=NONE    gui=NONE
  hi DiffAdd                        ctermfg=232   ctermbg=65    cterm=NONE            guifg=#080808 guibg=#5f875f gui=NONE
  hi DiffChange                     ctermfg=232   ctermbg=229   cterm=NONE            guifg=#080808 guibg=#ffffaf gui=NONE
  hi DiffText                       ctermfg=229   ctermbg=NONE  cterm=NONE            guifg=#ffffaf guibg=NONE    gui=NONE
  hi DiffDelete                     ctermfg=230   ctermbg=88    cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE
  hi Title                          ctermfg=255   ctermbg=NONE  cterm=bold            guifg=#eeeeee guibg=NONE    gui=bold
  hi TabLineSel                     ctermfg=230   ctermbg=237   cterm=NONE            guifg=#ffffd7 guibg=#3a3a3a gui=NONE
  hi TabLine                        ctermfg=244   ctermbg=237   cterm=NONE            guifg=#808080 guibg=#3a3a3a gui=NONE
  hi Scrollbar                      ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=#eeeeee guibg=#3a3a3a gui=NONE
  hi Delimiter                      ctermfg=67    ctermbg=NONE  cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE
  hi Ignore                         ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Underlined                     ctermfg=NONE  ctermbg=NONE  cterm=underline       guifg=NONE    guibg=NONE    gui=underline
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl

" Not yet assigned

  hi Question                       ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE
  hi QuickFixLine                   ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE
  hi SignColumn                     ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE
  hi Menu                           ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE
  hi Tooltip                        ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE
  hi PopupNotification              ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=#ff00ff guibg=NONE    gui=NONE

" Do not assign
" hi CursorIM                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
" hi MessageWindow                  ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE

" Why doesn't this 'Tag' work?
  hi Tag                            ctermfg=67    ctermbg=NONE  cterm=underline       guifg=#5f87af guibg=NONE    gui=underline

  hi! link Terminal Normal

  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Conditional Statement
  hi! link ColorColumn CursorLine
  hi! link Conceal Error
  hi! link CurSearch IncSearch
  hi! link CursorColumn CursorLine
  hi! link CursorLineNr LineNrAbove
  hi! link CursorLineSign VertSplit
  hi! link Debug Special
  hi! link Define Special
  hi! link Directory Type
  hi! link ErrorMsg Error
  hi! link Exception Special
  hi! link Float Constant
  hi! link FoldColumn VertSplit
  hi! link Folded VertSplit
  hi! link HtmlLink Type
  hi! link Identifier Function
  hi! link Include Special
  hi! link Keyword Function
  hi! link Label Statement
  hi! link LineNrBelow LineNrAbove
  hi! link Macro Special
  hi! link MoreMsg Comment
  hi! link ModeMsg Comment
  hi! link NonText VertSplit
  hi! link Number Constant
  hi! link Operator Statement
  hi! link Pmenu StatusLineNC
  hi! link PmenuSel StatusLine
  hi! link PmenuSbar StatusLine
  hi! link PmenuThumb StatusLineNC
  hi! link PreProc Special
  hi! link PreCondit Special
  hi! link Repeat Statement
  hi! link SpecialChar String
  hi! link SpecialComment Special
  hi! link SpecialKey Special
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link TabLineFill TabLine
  hi! link Typedef Type
  hi! link Todo Special
  hi! link WildMenu StatusLineNC

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

elseif &t_Co == 8 || $TERM !~# "^linux" || &t_Co == 16
  set t_Co=16

  hi Normal                         ctermfg=white     ctermbg=NONE  cterm=NONE
  hi Terminal                       ctermfg=white     ctermbg=NONE  cterm=NONE

  set background=dark

endif
