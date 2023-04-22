" Name: squire
" Maintainer: Geoff English <geoff_anthony@hotmail.com>
" Last Update: 20-04-2023 "(Remember <leader>mdu to set latest update!!)
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

if ($TERM =~ "256" || &t_Co >= 256) || has("gui_running")

  set background=dark

  hi Normal                         ctermfg=230   ctermbg=234   cterm=NONE            guifg=#ffffd7 guibg=#1c1c1c gui=NONE

  hi Visual                         ctermfg=NONE  ctermbg=237   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi VisualNOS                      ctermfg=NONE  ctermbg=243   cterm=NONE            guifg=NONE    guibg=#767676 gui=NONE
  hi Constant                       ctermfg=174   ctermbg=NONE  cterm=NONE            guifg=#d78787 guibg=NONE    gui=NONE
  hi Search                         ctermfg=229   ctermbg=237   cterm=NONE            guifg=#ffffaf guibg=#3a3a3a gui=NONE
  hi IncSearch                      ctermfg=NONE  ctermbg=237   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi Cursor                         ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=#d75faf gui=NONE
  hi lCursor                        ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=#af5fd7 gui=NONE
  hi Special                        ctermfg=108   ctermbg=NONE  cterm=NONE            guifg=#87af87 guibg=NONE    gui=NONE
  hi Comment                        ctermfg=66    ctermbg=NONE  cterm=NONE            guifg=#5f8787 guibg=NONE    gui=NONE
  hi StatusLine                     ctermfg=233   ctermbg=108   cterm=NONE            guifg=#080808 guibg=#87af87 gui=NONE
  hi StatusLineNC                   ctermfg=108   ctermbg=233   cterm=NONE            guifg=#87af87 guibg=#080808 gui=NONE
  hi Statement                      ctermfg=110   ctermbg=NONE  cterm=NONE            guifg=#87afd7 guibg=NONE    gui=NONE
  hi Type                           ctermfg=73    ctermbg=NONE  cterm=NONE            guifg=#5fafaf guibg=NONE    gui=NONE
  hi LineNr                         ctermfg=242   ctermbg=NONE  cterm=NONE            guifg=#6c6c6c guibg=NONE    gui=NONE
  hi LineNrAbove                    ctermfg=250   ctermbg=NONE  cterm=NONE            guifg=#bcbcbc guibg=NONE    gui=NONE
  hi String                         ctermfg=151   ctermbg=NONE  cterm=NONE            guifg=#afd787 guibg=NONE    gui=NONE 
  hi CursorLine                     ctermfg=NONE  ctermbg=233   cterm=NONE            guifg=NONE    guibg=#080808 gui=NONE
  hi Error			    ctermfg=230   ctermbg=88    cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE 
  hi WarningMsg                     ctermfg=221   ctermbg=88    cterm=NONE            guifg=#ffd75f guibg=#870000 gui=NONE 
  hi VertSplit                      ctermfg=250   ctermbg=237   cterm=NONE            guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  hi EndOfBuffer                    ctermfg=250   ctermbg=234   cterm=NONE            guifg=#bcbcbc guibg=#1c1c1c gui=NONE
  hi CursorLineFold                 ctermfg=246   ctermbg=237   cterm=NONE            guifg=#949494 guibg=#3a3a3a gui=NONE
  hi MatchParen                     ctermfg=NONE  ctermbg=237   cterm=NONE            guifg=NONE    guibg=#3a3a3a gui=NONE
  hi Function                       ctermfg=102    ctermbg=NONE  cterm=NONE            guifg=#af87af guibg=NONE    gui=NONE
  hi DiffAdd                        ctermfg=232   ctermbg=65    cterm=NONE            guifg=#080808 guibg=#87af87 gui=NONE
  hi DiffChange                     ctermfg=232   ctermbg=229   cterm=NONE            guifg=#080808 guibg=#ffffaf gui=NONE
  hi DiffText                       ctermfg=229   ctermbg=NONE  cterm=NONE            guifg=#ffffaf guibg=NONE    gui=NONE
  hi DiffDelete                     ctermfg=230   ctermbg=88    cterm=NONE            guifg=#ffffd7 guibg=#870000 gui=NONE
  hi Title                          ctermfg=255   ctermbg=NONE  cterm=bold            guifg=#eeeeee guibg=NONE    gui=bold
  hi TabLineSel                     ctermfg=230   ctermbg=237   cterm=NONE            guifg=#ffffd7 guibg=#3a3a3a gui=NONE
  hi TabLine                        ctermfg=244   ctermbg=237   cterm=NONE            guifg=#808080 guibg=#3a3a3a gui=NONE
  hi Delimiter                      ctermfg=67    ctermbg=NONE  cterm=NONE            guifg=#5f87af guibg=NONE    gui=NONE
  hi Ignore                         ctermfg=13    ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
  hi Underlined                     ctermfg=NONE  ctermbg=NONE  cterm=underline       guifg=NONE    guibg=NONE    gui=underline
  hi SpellBad                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellCap                       ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellLocal                     ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi SpellRare                      ctermfg=NONE  ctermbg=NONE  cterm=undercurl       guifg=NONE    guibg=NONE    gui=undercurl
  hi Tag                            ctermfg=67    ctermbg=NONE  cterm=underline       guifg=#5f87af guibg=NONE    gui=underline

" Do not assign
" hi CursorIM                       ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
" hi MessageWindow                  ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE
" hi PopupNotification              ctermfg=NONE  ctermbg=NONE  cterm=NONE            guifg=NONE    guibg=NONE    gui=NONE

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
  hi! link Typedef Type
  hi! link Todo Special
  hi! link Tooltip StatusLine
  hi! link WildMenu StatusLineNC

" Markdown

  hi markdownHeadingDelimiter       ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE       gui=NONE
  hi MarkdownItalic                 ctermfg=67    ctermbg=NONE  cterm=NONE             guifg=#5f87af guibg=NONE       gui=NONE
  hi markdownBold                   ctermfg=67    ctermbg=NONE  cterm=bold             guifg=#5f87af guibg=NONE       gui=bold
  hi markdownBoldItalic             ctermfg=74    ctermbg=NONE  cterm=bold             guifg=#87afd7 guibg=NONE       gui=bold
  hi markdownCode                   ctermfg=244   ctermbg=NONE  cterm=NONE             guifg=#808080 guibg=NONE       gui=NONE
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

" 232  Grey3            #080808  rgb(8,8,8)        hsl(0,0%,3%)
" 234  Grey11           #1c1c1c  rgb(28,28,28)     hsl(0,0%,10%)
" 237  Grey23           #3a3a3a  rgb(58,58,58)     hsl(0,0%,22%)
" 242  Grey42           #6c6c6c  rgb(108,108,108)  hsl(0,0%,40%)
" 243  Grey46           #767676  rgb(118,118,118)  hsl(0,0%,46%)
" 244  Grey50           #808080  rgb(128,128,128)  hsl(0,0%,50%)
" 246  Grey58           #949494  rgb(148,148,148)  hsl(0,0%,58%)
" 250  Grey74           #bcbcbc  rgb(188,188,188)  hsl(0,0%,73%)
" 255  Grey93           #eeeeee  rgb(238,238,238)  hsl(0,0%,93%)
" 66   PaleTurquoise4   #5f8787  rgb(95,135,135)   hsl(180,17%,45%)
" 67   SteelBlue        #5f87af  rgb(95,135,175)   hsl(210,33%,52%)
" 73   CadetBlue        #5fafaf  rgb(95,175,175)   hsl(180,33%,52%)
" 74   SkyBlue3         #5fafd7  rgb(95,175,215)   hsl(200,60%,60%)
" 88   DarkRed          #870000  rgb(135,0,0)      hsl(0,100%,26%)
" 139  Grey63           #af87af  rgb(175,135,175)  hsl(300,20%,60%)
" 108  DarkSeaGreen     #87af87  rgb(135,175,135)  hsl(120,20%,60%)
" 110  LightSkyBlue3    #87afd7  rgb(135,175,215)  hsl(210,50%,68%)
" 134  MediumOrchid     #af5fd7  rgb(175,95,215)   hsl(280,60%,60%)
" 150  DarkSeaGreen3    #afd787  rgb(175,215,135)  hsl(90,50%,68%)
" 169  HotPink2         #d75faf  rgb(215,95,175)   hsl(320,60%,60%)
" 174  LightPink3       #d78787  rgb(215,135,135)  hsl(0,50%,68%)
" 221  LightGoldenrod2  #ffd75f  rgb(255,215,95)   hsl(45,100%,68%)
" 229  Wheat1           #ffffaf  rgb(255,255,175)  hsl(60,100%,84%)
" 230  Cornsilk1        #ffffd7  rgb(255,255,215)  hsl(60,100%,92%)
