" Vim color file
" Maintainer: Geoff English <geoff_anthony@hotmail.com>
" Last Change: (03-03-2023)
" Heavily inspired from Apprentice and torte

" To Do:
" - Make the background darker *check*
" - What affects the colour of numbers *check*
" - what affects the colour of Markdown Headings? *check*
" - what affects the colour of Markdown italics? *check*
" - One by one - work what each group does, and set the cterms *check*
" - One by one - set the equivalent gui colour in hex *check*
" - Create/Decide on a formal colour palette and fine tune!
" - Modify for True color, 8/16 colour, and 256 colour terminals
" - Figure out what's being modified in the background!
" - figure out what/why changes when you refresh your vimrc
" - make italics better in markdown *check*
" - make bold actually bold in markdown
" - make bold italic actually bold in markdown
" - Get access to your github account !@_@! *check*

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "squire"

" hardcoded colors :

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")

  hi Normal             ctermfg=230         ctermbg=233         cterm=NONE                    guifg=#ffffd7     guibg=#121212     gui=NONE
  hi Terminal           ctermfg=230         ctermbg=233         cterm=NONE                    guifg=#ffffd7     guibg=#121212     gui=NONE
  hi Visual             ctermfg=NONE        ctermbg=244         cterm=NONE                    guifg=NONE        guibg=#808080     gui=NONE
  hi Constant           ctermfg=138         ctermbg=NONE        cterm=NONE                    guifg=#af8787     guibg=NONE        gui=NONE

  set background=dark

  hi Search             ctermfg=NONE        ctermbg=16          cterm=NONE                    guifg=NONE        guibg=#000000     gui=NONE
  hi IncSearch          ctermfg=NONE        ctermbg=237         cterm=NONE                    guifg=NONE        guibg=#3a3a3a     gui=NONE
  hi CurSearch          ctermfg=NONE        ctermbg=236         cterm=NONE                    guifg=NONE        guibg=#303030     gui=NONE
  hi WildMenu           ctermfg=NONE        ctermbg=237         cterm=NONE                    guifg=NONE        guibg=#3a3a3a     gui=NONE
  hi Cursor             ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=#d75faf     gui=NONE
  hi Special            ctermfg=143         ctermbg=NONE        cterm=NONE                    guifg=#afaf5f     guibg=NONE        gui=NONE
  hi Comment            ctermfg=66          ctermbg=NONE        cterm=NONE                    guifg=#5f8787     guibg=NONE        gui=NONE
  hi StatusLine         ctermfg=234         ctermbg=251         cterm=NONE                    guifg=#1c1c1c     guibg=#c6c6c6     gui=NONE
  hi StatusLineNC       ctermfg=251         ctermbg=234         cterm=NONE                    guifg=#c6c6c6     guibg=#1c1c1c     gui=NONE
  hi StatusLineTerm     ctermfg=234         ctermbg=251         cterm=NONE                    guifg=#c6c6c6     guibg=#1c1c1c     gui=NONE
  hi StatusLineTermNC   ctermfg=234         ctermbg=251         cterm=NONE                    guifg=#c6c6c6     guibg=#1c1c1c     gui=NONE
  hi Statement          ctermfg=74          ctermbg=NONE        cterm=NONE                    guifg=#5fafd7     guibg=NONE        gui=NONE
  hi Type               ctermfg=30          ctermbg=NONE        cterm=NONE                    guifg=#008787     guibg=NONE        gui=NONE
  hi LineNr             ctermfg=242         ctermbg=NONE        cterm=NONE                    guifg=#6c6c6c     guibg=NONE        gui=NONE
  hi LineNrAbove        ctermfg=250         ctermbg=NONE        cterm=NONE                    guifg=#bcbcbc     guibg=NONE        gui=NONE
  hi LineNrBelow        ctermfg=250         ctermbg=NONE        cterm=NONE                    guifg=#bcbcbc     guibg=NONE        gui=NONE
  hi CursorLineNr       ctermfg=250         ctermbg=NONE        cterm=NONE                    guifg=#bcbcbc     guibg=NONE        gui=NONE
  hi CursorLineSign     ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi String             ctermfg=150         ctermbg=NONE        cterm=NONE                    guifg=#afd787     guibg=NONE        gui=NONE 
  hi ErrorMsg           ctermfg=15          ctermbg=88          cterm=NONE                    guifg=#ffffff     guibg=#87005f     gui=NONE 
  hi WarningMsg         ctermfg=221         ctermbg=88          cterm=NONE                    guifg=#ffd75f     guibg=#87005f     gui=NONE 
  hi ColorColumn        ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi Conceal            ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi lCursor            ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi CursorIM           ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi CursorColumn       ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi CursorLine         ctermfg=NONE        ctermbg=16          cterm=NONE                    guifg=NONE        guibg=#000000     gui=NONE
  hi Directory          ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi DiffAdd            ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi DiffChange         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi DiffDelete         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi DiffText           ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi EndOfBuffer        ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi VertSplit          ctermfg=250         ctermbg=237         cterm=NONE                    guifg=#bcbcbc     guibg=#3a3a3a     gui=NONE
  hi Folded             ctermfg=250         ctermbg=237         cterm=NONE                    guifg=#bcbcbc     guibg=#3a3a3a     gui=NONE
  hi FoldColumn         ctermfg=250         ctermbg=237         cterm=NONE                    guifg=#bcbcbc     guibg=#3a3a3a     gui=NONE
  hi CursorLineFold     ctermfg=251         ctermbg=238         cterm=NONE                    guifg=#c6c6c6     guibg=#444444     gui=NONE
  hi SignColumn         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi MatchParen         ctermfg=NONE        ctermbg=240         cterm=NONE                    guifg=NONE        guibg=#585858     gui=NONE
  hi ModeMsg            ctermfg=66          ctermbg=NONE        cterm=NONE                    guifg=#5f8787     guibg=NONE        gui=NONE
  hi MoreMsg            ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi NonText            ctermfg=250         ctermbg=237         cterm=NONE                    guifg=#bcbcbc     guibg=#3a3a3a     gui=NONE
  hi Pmenu              ctermfg=230         ctermbg=234         cterm=NONE                    guifg=#ffffd7     guibg=#1c1c1c     gui=NONE
  hi PmenuSel           ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi PmenuSbar          ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi PmenuThumb         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi Question           ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi QuickFixLine       ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi SpecialKey         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi SpellBad           ctermfg=NONE        ctermbg=NONE        cterm=undercurl               guifg=NONE        guibg=NONE        gui=undercurl
  hi SpellCap           ctermfg=NONE        ctermbg=NONE        cterm=undercurl               guifg=NONE        guibg=NONE        gui=undercurl
  hi SpellLocal         ctermfg=NONE        ctermbg=NONE        cterm=undercurl               guifg=NONE        guibg=NONE        gui=undercurl
  hi SpellRare          ctermfg=NONE        ctermbg=NONE        cterm=undercurl               guifg=NONE        guibg=NONE        gui=undercurl
  hi TabLine            ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi TabLineFill        ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi TabLineSel         ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi VisualNOS          ctermfg=NONE        ctermbg=NONE        cterm=NONE                    guifg=NONE        guibg=NONE        gui=NONE
  hi MoreMsg            ctermfg=66          ctermbg=NONE        cterm=NONE                    guifg=#5f8787     guibg=NONE        gui=NONE
  hi Function           ctermfg=103         ctermbg=NONE        cterm=NONE                    guifg=#8787af     guibg=NONE        gui=NONE
  hi Identifier         ctermfg=67          ctermbg=NONE        cterm=NONE                    guifg=#5f87af     guibg=NONE        gui=NONE
  hi Title              ctermfg=231         ctermbg=NONE        cterm=bold                    guifg=#ffffff     guibg=NONE        gui=bold

  hi! link Number Constant
  hi! link Float Constant
  hi! link Boolean Constant
  hi! link PreProc Special
  hi! link Define Special
  hi! link Include Special
  hi! link Macro Special
  hi! link PreCondit Special
  hi! link htmlLink Function

" Markdown

  hi markdownHeadingDelimiter         ctermfg=23          ctermbg=NONE        cterm=NONE                    guifg=#005f87     guibg=NONE        gui=NONE
  hi MarkdownItalic                   ctermfg=23          ctermbg=NONE        cterm=NONE                    guifg=#005f5f     guibg=NONE        gui=NONE  
  hi markdownItalicDelimiter          ctermfg=23          ctermbg=NONE        cterm=NONE                    guifg=#005f5f     guibg=NONE        gui=NONE  
  hi markdownBold                     ctermfg=24          ctermbg=NONE        cterm=NONE                    guifg=#005f87     guibg=NONE        gui=NONE
  hi markdownBoldDelimiter            ctermfg=24          ctermbg=NONE        cterm=NONE                    guifg=#005f87     guibg=NONE        gui=NONE
  hi markdownBoldItalic               ctermfg=24          ctermbg=NONE        cterm=bold                    guifg=#005f87     guibg=NONE        gui=bold
  hi markdownBoldItalicDelimiter      ctermfg=24          ctermbg=NONE        cterm=bold                    guifg=#005f87     guibg=NONE        gui=bold

" markdownAutomaticLink  markdownBlockquote  markdownCodeDelimiter  markdownError  markdownEscape  markdownFootnote  markdownFootnoteDefinition  

  " markdownHeadingRule  markdownId
" markdownIdDeclaration  markdownIdDelimiter  markdownLinkText  markdownListMarker  markdownOrderedListMarker  markdownRule  markdownStrike  markdownStrikeDelimiter  markdownUrl
" markdownUrlDelimiter  markdownUrlTitle  markdownUrlTitleDelimiter


elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal             ctermbg=NONE        ctermfg=white       cterm=NONE
  hi Terminal           ctermbg=NONE        ctermfg=white       cterm=NONE

  set background=dark

endif
