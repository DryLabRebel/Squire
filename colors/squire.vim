" Name:        squire
" Maintainer:  Geoff English <geoff_anthony - hotmail>
" Website:     https://github.com/DryLabRebel/Squire
" License:     MIT
" Last Update: 18-03-2024

" A medium contrast, low saturation colorscheme 
" inspired by apprentice (https://github.com/romainl/Apprentice/tree/master).
" Squire explicitly sets a few extra options in markdown, 
" and has a slightly higher contrast against the background.

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
set background=dark
let g:colors_name = "squire"

" Do not assign
" hi CursorIM
" hi MessageWindow
" hi PopupNotification

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 1

if (has("termguicolors") && &termguicolors) || has("gui_running")
  let g:terminal_ansi_colors = [ "#5f875f", "#5f8787", "#5f87af", "#5fafaf", "#870000", "#875f5f", "#87af87", "#87afaf", "#af5fd7", "#afaf87", "#afd7d7", "#d78787", "#d7afaf", "#d7d7af", "#ffd75f", "#ffffaf", "#ffffd7", "#080808", "#121212", "#1c1c1c", "#3a3a3a", "#767676", "#808080", "#949494", "#bcbcbc", "#c6c6c6", "#eeeeee" ]
endif

" 24 bit (true) colour

hi Normal                         cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE
hi Visual                         cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
hi VisualNOS                      cterm=NONE            guifg=NONE    guibg=#767676 gui=NONE
hi Constant                       cterm=NONE            guifg=#d78787 guibg=NONE    gui=NONE
hi Search                         cterm=NONE            guifg=#ffffaf guibg=#3a3a3a gui=NONE
hi IncSearch                      cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
hi Cursor                         cterm=NONE            guifg=NONE    guibg=#d75faf gui=NONE
hi lCursor                        cterm=NONE            guifg=NONE    guibg=#af5fd7 gui=NONE
hi Special                        cterm=NONE            guifg=#87af87 guibg=NONE    gui=NONE
hi Comment                        cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
hi StatusLine                     cterm=NONE            guifg=#121212 guibg=#5f8787 gui=NONE
hi StatusLineNC                   cterm=NONE            guifg=#5fafaf guibg=#121212 gui=NONE
hi Statement                      cterm=NONE            guifg=#87afaf guibg=NONE    gui=NONE
hi Type                           cterm=NONE            guifg=#d7afaf guibg=NONE    gui=NONE
hi LineNr                         cterm=NONE            guifg=#767676 guibg=NONE    gui=NONE
hi LineNrAbove                    cterm=NONE            guifg=#c6c6c6 guibg=NONE    gui=NONE
hi String                         cterm=NONE            guifg=#afaf87 guibg=NONE    gui=NONE 
hi CursorLine                     cterm=NONE            guifg=NONE    guibg=#121212 gui=NONE
hi Error                          cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE 
hi WarningMsg                     cterm=NONE            guifg=#ffd75f guibg=#870000 gui=NONE 
hi VertSplit                      cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
hi EndOfBuffer                    cterm=NONE            guifg=#c6c6c6 guibg=#1c1c1c gui=NONE
hi CursorLineFold                 cterm=NONE            guifg=#949494 guibg=#3a3a3a gui=NONE
hi MatchParen                     cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
hi Function                       cterm=NONE            guifg=#875f5f guibg=NONE    gui=NONE
hi DiffAdd                        cterm=NONE            guifg=#080808 guibg=#5f875f gui=NONE
hi DiffChange                     cterm=NONE            guifg=#080808 guibg=#ffffaf gui=NONE
hi DiffText                       cterm=NONE            guifg=#ffffaf guibg=NONE    gui=NONE
hi DiffDelete                     cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE
hi Title                          cterm=bold            guifg=#eeeeee guibg=NONE    gui=bold
hi TabLineSel                     cterm=NONE            guifg=#ffffd7 guibg=#3a3a3a gui=NONE
hi TabLine                        cterm=NONE            guifg=#808080 guibg=#3a3a3a gui=NONE
hi Delimiter                      cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE
hi Ignore                         cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
hi Underlined                     cterm=underline       guifg=NONE    guibg=NONE    gui=underline
hi SpellBad                       cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
hi SpellCap                       cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
hi SpellLocal                     cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
hi SpellRare                      cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl

" Markdown

hi markdownHeadingDelimiter       cterm=NONE            guifg=#87afaf guibg=NONE    gui=NONE
hi MarkdownItalic                 cterm=NONE            guifg=#87afaf guibg=NONE    gui=NONE
hi markdownBold                   cterm=bold            guifg=#87afaf guibg=NONE    gui=bold
hi markdownBoldItalic             cterm=bold            guifg=#afd7d7 guibg=NONE    gui=bold
hi markdownCode                   cterm=NONE            guifg=#808080 guibg=NONE    gui=NONE
hi markdownRule                   cterm=NONE            guifg=#afd7d7 guibg=NONE    gui=NONE

" Links

hi! link Terminal Normal
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link ColorColumn CursorLine
hi! link Conceal Error
hi! link CurSearch IncSearch
hi! link CursorColumn CursorLine
hi! link CursorLineNr LineNrAbove
hi! link CursorLineSign CursorLineNr
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
hi! link Menu StatusLine
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
hi! link Question String
hi! link QuickFixLine PmenuSel
hi! link Repeat Statement
hi! link Scrollbar StatusLineNC
hi! link SignColumn LineNr
hi! link SpecialChar String
hi! link SpecialComment Special
hi! link SpecialKey Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StorageClass Type
hi! link Structure Type
hi! link TabLineFill TabLine
hi! link Tag Delimiter
hi! link Typedef Type
hi! link Todo Special
hi! link Tooltip StatusLine
hi! link WildMenu StatusLineNC

" Markdown Links

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
hi! link markdownUrl String
hi! link markdownUrlTitleDelimiter Type
hi! link markdownIdDeclaration Type
hi! link markdownLinkText Type
hi! link markdownFootnote Function
hi! link markdownFootnoteDefinition Function
hi! link markdownUrlTitle String
hi! link markdownIdDelimiter Title

" 256 colors
" ----------------------

if s:t_Co >= 256

  hi Normal                         ctermfg=230   ctermbg=234   cterm=NONE
  hi Visual                         ctermfg=NONE  ctermbg=237   cterm=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=243   cterm=NONE
  hi Constant                       ctermfg=174   ctermbg=NONE  cterm=NONE
  hi Search                         ctermfg=229   ctermbg=237   cterm=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=237   cterm=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi Special                        ctermfg=108   ctermbg=NONE  cterm=NONE
  hi Comment                        ctermfg=66    ctermbg=NONE  cterm=NONE
  hi StatusLine                     ctermfg=233   ctermbg=66    cterm=NONE
  hi StatusLineNC                   ctermfg=73    ctermbg=233   cterm=NONE
  hi Statement                      ctermfg=109   ctermbg=NONE  cterm=NONE
  hi Type                           ctermfg=181   ctermbg=NONE  cterm=NONE
  hi LineNr                         ctermfg=243   ctermbg=NONE  cterm=NONE
  hi LineNrAbove                    ctermfg=251   ctermbg=NONE  cterm=NONE
  hi String                         ctermfg=144   ctermbg=NONE  cterm=NONE
  hi CursorLine                     ctermfg=NONE  ctermbg=233   cterm=NONE
  hi Error                          ctermfg=230   ctermbg=88    cterm=NONE
  hi WarningMsg                     ctermfg=221   ctermbg=88    cterm=NONE
  hi VertSplit                      ctermfg=250   ctermbg=237   cterm=NONE
  hi EndOfBuffer                    ctermfg=251   ctermbg=234   cterm=NONE
  hi CursorLineFold                 ctermfg=246   ctermbg=237   cterm=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=237   cterm=NONE
  hi Function                       ctermfg=95    ctermbg=NONE  cterm=NONE
  hi DiffAdd                        ctermfg=232   ctermbg=65    cterm=NONE
  hi DiffChange                     ctermfg=232   ctermbg=229   cterm=NONE
  hi DiffText                       ctermfg=229   ctermbg=NONE  cterm=NONE
  hi DiffDelete                     ctermfg=230   ctermbg=88    cterm=NONE
  hi Title                          ctermfg=255   ctermbg=NONE  cterm=bold
  hi TabLineSel                     ctermfg=230   ctermbg=237   cterm=NONE
  hi TabLine                        ctermfg=244   ctermbg=237   cterm=NONE
  hi Delimiter                      ctermfg=67    ctermbg=NONE  cterm=NONE
  hi Ignore                         ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi Underlined                     ctermfg=NONE  ctermbg=NONE  cterm=underline
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl

" Markdown

  hi markdownHeadingDelimiter       ctermfg=109   ctermbg=NONE  cterm=NONE
  hi MarkdownItalic                 ctermfg=109   ctermbg=NONE  cterm=NONE
  hi markdownBold                   ctermfg=109   ctermbg=NONE  cterm=bold
  hi markdownBoldItalic             ctermfg=152   ctermbg=NONE  cterm=bold
  hi markdownCode                   ctermfg=244   ctermbg=NONE  cterm=NONE
  hi markdownRule                   ctermfg=152   ctermbg=NONE  cterm=NONE

" Links

  hi! link Terminal Normal
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Conditional Statement
  hi! link ColorColumn CursorLine
  hi! link Conceal Error
  hi! link CurSearch IncSearch
  hi! link CursorColumn CursorLine
  hi! link CursorLineNr LineNrAbove
  hi! link CursorLineSign CursorLineNr
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
  hi! link Menu StatusLine
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
  hi! link Question String
  hi! link QuickFixLine PmenuSel
  hi! link Repeat Statement
  hi! link Scrollbar StatusLineNC
  hi! link SignColumn LineNr
  hi! link SpecialChar String
  hi! link SpecialComment Special
  hi! link SpecialKey Special
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link TabLineFill TabLine
  hi! link Tag Delimiter
  hi! link Typedef Type
  hi! link Todo Special
  hi! link Tooltip StatusLine
  hi! link WildMenu StatusLineNC

" Markdown Links

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
  hi! link markdownUrl String
  hi! link markdownUrlTitleDelimiter Type
  hi! link markdownIdDeclaration Type
  hi! link markdownLinkText Type
  hi! link markdownFootnote Function
  hi! link markdownFootnoteDefinition Function
  hi! link markdownUrlTitle String
  hi! link markdownIdDelimiter Title

  unlet s:t_Co
  finish

endif

" 8-16 colours
" ----------------------

if s:t_Co == 8 || s:t_Co == 16

  hi Normal                         ctermfg=15    ctermbg=0     cterm=NONE
  hi Visual                         ctermfg=NONE  ctermbg=8     cterm=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=8     cterm=NONE
  hi Constant                       ctermfg=5     ctermbg=NONE  cterm=NONE
  hi Search                         ctermfg=7     ctermbg=8     cterm=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=8     cterm=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi Special                        ctermfg=2     ctermbg=NONE  cterm=NONE
  hi Comment                        ctermfg=6     ctermbg=NONE  cterm=NONE
  hi StatusLine                     ctermfg=0     ctermbg=6     cterm=NONE
  hi StatusLineNC                   ctermfg=6     ctermbg=0     cterm=NONE
  hi Statement                      ctermfg=6     ctermbg=NONE  cterm=NONE
  hi Type                           ctermfg=5     ctermbg=NONE  cterm=NONE
  hi LineNr                         ctermfg=8     ctermbg=NONE  cterm=NONE
  hi LineNrAbove                    ctermfg=7     ctermbg=NONE  cterm=NONE
  hi String                         ctermfg=3     ctermbg=NONE  cterm=NONE
  hi CursorLine                     ctermfg=NONE  ctermbg=0     cterm=NONE
  hi Error                          ctermfg=15    ctermbg=1     cterm=NONE
  hi WarningMsg                     ctermfg=3     ctermbg=1     cterm=NONE
  hi VertSplit                      ctermfg=7     ctermbg=8     cterm=NONE
  hi EndOfBuffer                    ctermfg=7     ctermbg=0     cterm=NONE
  hi CursorLineFold                 ctermfg=8     ctermbg=8     cterm=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=8     cterm=NONE
  hi Function                       ctermfg=5     ctermbg=NONE  cterm=NONE
  hi DiffAdd                        ctermfg=0     ctermbg=2     cterm=NONE
  hi DiffChange                     ctermfg=0     ctermbg=7     cterm=NONE
  hi DiffText                       ctermfg=7     ctermbg=NONE  cterm=NONE
  hi DiffDelete                     ctermfg=15    ctermbg=1     cterm=NONE
  hi Title                          ctermfg=15    ctermbg=NONE  cterm=bold
  hi TabLineSel                     ctermfg=15    ctermbg=8     cterm=NONE
  hi TabLine                        ctermfg=8     ctermbg=8     cterm=NONE
  hi Delimiter                      ctermfg=4     ctermbg=NONE  cterm=NONE
  hi Ignore                         ctermfg=NONE  ctermbg=NONE  cterm=NONE
  hi Underlined                     ctermfg=NONE  ctermbg=NONE  cterm=underline
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl

" Markdown

  hi markdownHeadingDelimiter       ctermfg=6     ctermbg=NONE  cterm=NONE
  hi MarkdownItalic                 ctermfg=6     ctermbg=NONE  cterm=NONE
  hi markdownBold                   ctermfg=6     ctermbg=NONE  cterm=bold
  hi markdownBoldItalic             ctermfg=3     ctermbg=NONE  cterm=bold
  hi markdownCode                   ctermfg=8     ctermbg=NONE  cterm=NONE
  hi markdownRule                   ctermfg=3     ctermbg=NONE  cterm=NONE

" Links

  hi! link Terminal Normal
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Conditional Statement
  hi! link ColorColumn CursorLine
  hi! link Conceal Error
  hi! link CurSearch IncSearch
  hi! link CursorColumn CursorLine
  hi! link CursorLineNr LineNrAbove
  hi! link CursorLineSign CursorLineNr
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
  hi! link Menu StatusLine
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
  hi! link Question String
  hi! link QuickFixLine PmenuSel
  hi! link Repeat Statement
  hi! link Scrollbar StatusLineNC
  hi! link SignColumn LineNr
  hi! link SpecialChar String
  hi! link SpecialComment Special
  hi! link SpecialKey Special
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link TabLineFill TabLine
  hi! link Tag Delimiter
  hi! link Typedef Type
  hi! link Todo Special
  hi! link Tooltip StatusLine
  hi! link WildMenu StatusLineNC

" Markdown Links

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
  hi! link markdownUrl String
  hi! link markdownUrlTitleDelimiter Type
  hi! link markdownIdDeclaration Type
  hi! link markdownLinkText Type
  hi! link markdownFootnote Function
  hi! link markdownFootnoteDefinition Function
  hi! link markdownUrlTitle String
  hi! link markdownIdDelimiter Title

  unlet s:t_Co
  finish

