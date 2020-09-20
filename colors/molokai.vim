"------------------------------------------------------------
" Name: molokai.vim
" Description: A rewrite of molokai.
" Maintainer: tew
"------------------------------------------------------------

highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'holokai'

function! s:set() abort
  let none           = {'gui': 'NONE',      'cterm': 'NONE'}
  let bold           = {'gui': 'bold',      'cterm': 'bold'}
  let italic         = {'gui': 'italic',    'cterm': 'italic'}
  let underline      = {'gui': 'underline', 'cterm': 'underline'}
  let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
  let bolditalic     = {'gui': 'bold,italic', 'cterm': 'bold,italic'}
  let boldunderline  = {'gui': 'bold,underline', 'cterm': 'bold,underline'}

  let highlight_group = {}
  if &background ==# 'dark'
    " dark theme

    " Palette
    let purple      = {'gui': '#ae81ff', 'cterm': '135'}
    let yellow      = {'gui': '#E6DB74', 'cterm': '144'}
    let pink        = {'gui': '#F92672', 'cterm': '161'}
    let black       = {'gui': '#000000', 'cterm': '16'}
    let white       = {'gui': '#F8F8F0', 'cterm': '252'}
    let brownish    = {'gui': '#BCA3A3', 'cterm': '225'}
    let blue        = {'gui': '#66D9EF', 'cterm': '81'}
    let grey        = {'gui': '#8F8F8F', 'cterm': '241'}
    let darkblue    = {'gui': '#13354A', 'cterm': '24'}
    let grey2       = {'gui': '#89807D', 'cterm': '181'}
    let darkgrey    = {'gui': '#4C4745', 'cterm': '239'}
    let darkred     = {'gui': '#960050', 'cterm': '162'}
    let blackred    = {'gui': '#1E0010', 'cterm': '89'}
    let green       = {'gui': '#A6E22E', 'cterm': '118'}
    let blackgrey   = {'gui': '#232526', 'cterm': '235'}
    let bluegrey    = {'gui': '#465457', 'cterm': '67'}
    let orange      = {'gui': '#FD971F', 'cterm': '208'}
    let grey3       = {'gui': '#808080', 'cterm': '242'}
    let weirdgold   = {'gui': '#C4BE89', 'cterm': '193'}
    let whitegold   = {'gui': '#FFE792', 'cterm': '222'}
    let weird       = {'gui': '#7E8E91', 'cterm': '245'}
    let red         = {'gui': '#FF0000', 'cterm': '52'}
    let indigo      = {'gui': '#7070F0', 'cterm': '17'}
    let cyan        = {'gui': '#70F0F0', 'cterm': '17'}
    let bluegrey2   = {'gui': '#455354', 'cterm': '238'}
    let black2      = {'gui': '#080808', 'cterm': '232'}
    let redorange   = {'gui': '#ef5939', 'cterm': '166'}
    let threes      = {'gui': '#333333', 'cterm': '238'}
    let bg          = {'gui': '#1b1d1e', 'cterm': '233'}
    let bluegrey3   = {'gui': '#293739', 'cterm': '23'}
    let greyey      = {'gui': '#403D3D', 'cterm': '235'}
    let bright      = {'gui': '#FFFFFF', 'cterm': '231'}

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [white,       bg,          none,      none]
    let highlight_group.Visual       = [none,        greyey,      none,      none]
    let highlight_group.VisualNOS    = [none,        greyey,      boldunderline, none]
    " Cursor
    let highlight_group.Cursor       = [black,       white,       none,      none]
    "let highlight_group.CursorIM     = [black,       white,       none,      none]
    let highlight_group.CursorLine   = [none,        bluegrey3,   none,      none]
    let highlight_group.CursorColumn = highlight_group.CursorLine
    " Statusline
    let highlight_group.StatusLine   = [white,       bluegrey2,   bold,      none]
    let highlight_group.StatusLineNC = [black2,      grey3,       none,      none]
    let highlight_group.WildMenu     = [blue,        black,       none,      none]
    let highlight_group.StatusLineTerm = highlight_group.StatusLine
    let highlight_group.StatusLineTermNC = highlight_group.StatusLineNC
    " Sidebar
    let highlight_group.LineNr       = [bluegrey,    blackgrey,   none,      none]
    let highlight_group.CursorLineNr = [orange,      none,        none,      none]
    let highlight_group.FoldColumn   = [bluegrey,    black,       none,      none]
    let highlight_group.SignColumn   = [green,       blackgrey,   none,      none]
    let highlight_group.VertSplit    = [grey3,       black2,      bold,      none]
    let highlight_group.ColorColumn  = [none,        blackgrey,   none,      none]
    " Fold
    let highlight_group.Folded       = [bluegrey,    black,       none,      none]
    " Tabline
    " let highlight_group.TabLineSel   = highlight_group.WildMenu
    let highlight_group.TabLineFill  = [bg,          bg,          none,      none]
    let highlight_group.TabLine      = [grey3,       none,        none,      none]
    " Search
    let highlight_group.Search       = [black,       whitegold,   none,      none]
    let highlight_group.IncSearch    = [black,       weirdgold,   none,      none]
    " Message
    let highlight_group.ErrorMsg     = [pink,        blackgrey,   bold,      none]
    let highlight_group.ModeMsg      = [yellow,      none,        bold,      none]
    let highlight_group.MoreMsg      = [yellow,      none,        bold,      none]
    let highlight_group.Question     = [blue,        none,        bold,      none]
    let highlight_group.Repeat       = [pink,        none,        bold,      none]
    let highlight_group.Title        = [redorange,   none,        bold,      none]
    let highlight_group.WarningMsg   = [white,       threes,      bold,      none]
    " Completion
    let highlight_group.Pmenu        = [blue,        black,       none,      none]
    let highlight_group.PmenuSel     = [none,        grey3,       none,      none]
    let highlight_group.PmenuSbar    = [none,        black2,      none,      none]
    let highlight_group.PmenuThumb   = [blue,        bright,      none,      none]
    " Diff
    let highlight_group.DiffAdd      = [none,        darkblue,    none,      none]
    let highlight_group.DiffChange   = [grey2,       darkgrey,    none,      none]
    let highlight_group.DiffDelete   = [darkred,     blackred,    bold,      none]
    let highlight_group.DiffText     = [none,        darkgrey,    bolditalic, none]
    " Miscellaneous
    let highlight_group.Keyword      = [pink,        none,        bold,      none]
    let highlight_group.Label        = [yellow,      none,        none,      none]
    let highlight_group.Macro        = [weirdgold,   none,        italic,    none]
    let highlight_group.Directory    = [green,       none,        bold,      none]
    let highlight_group.NonText      = [bluegrey,    none,        bold,      none]
    let highlight_group.SpecialKey   = [bluegrey,    none,        italic,    none]
    let highlight_group.Conceal      = [none,        none,        none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Boolean      = [purple,      none,        none,      none]
    let highlight_group.Character    = [yellow,      none,        none,      none]
    let highlight_group.Debug        = [brownish,    none,        bold,      none]
    let highlight_group.Define       = [blue,        none,        none,      none]
    let highlight_group.Delimiter    = [grey,        none,        none,      none]
    let highlight_group.Exception    = [green,       none,        bold,      none]
    let highlight_group.Float        = [purple,      none,        none,      none]
    let highlight_group.Function     = [green,       none,        none,      none]
    let highlight_group.Number       = [purple,      none,        none,      none]
    let highlight_group.String       = [yellow,      none,        none,      none]
    let highlight_group.Comment      = [weird,       none,        none,      none]
    let highlight_group.Constant     = [purple,      none,        bold,      none]
    let highlight_group.Conditional  = [pink,        none,        bold,      none]
    let highlight_group.String       = [yellow,      none,        none,      none]
    let highlight_group.Identifier   = [orange,      none,        none,      none]
    let highlight_group.Statement    = [pink,        none,        bold,      none]
    let highlight_group.PreCondit    = [green,       none,        bold,      none]
    let highlight_group.PreProc      = [green,       none,        none,      none]
    let highlight_group.Typedef      = [blue,        none,        none,      none]
    let highlight_group.Type         = [blue,        none,        none,      none]
    let highlight_group.SpecialChar  = [pink,        none,        bold,      none]
    let highlight_group.SpecialComment = [weird,     none,        bold,      none]
    let highlight_group.Special      = [blue,        none,        italic,    none]
    let highlight_group.StorageClass = [orange,      none,        italic,    none]
    let highlight_group.Structure    = [blue,        none,        none,    none]
    let highlight_group.Underlined   = [grey3,       none,        underline, none]
    let highlight_group.Ignore       = [grey3,       none,        none,      none]
    let highlight_group.Error        = [yellow,      blackred,    none,      none]
    let highlight_group.Tag          = [pink,        none,        italic,    none]
    let highlight_group.Todo         = [white,       none,        bold,      none]

    "*** Spell ***"
    let highlight_group.SpellBad     = [none,        none,        undercurl, red]
    let highlight_group.SpellCap     = [none,        none,        undercurl, indigo]
    let highlight_group.SpellLocal   = [none,        none,        undercurl, cyan]
    let highlight_group.SpellRare    = [none,        none,        undercurl, bright]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen   = [black,       orange,      bold,      none]
    let highlight_group.Operator     = [pink,        none,        none,      none]

    let bg_none    = {'gui': bg.gui, 'cterm': 'NONE'}
  else
    " original monokai theme
    let purple      = {'gui': '#ae81ff', 'cterm': '135'}
    let yellow      = {'gui': '#E6DB74', 'cterm': '144'}
    let pink        = {'gui': '#F92672', 'cterm': '161'}
    let black       = {'gui': '#000000', 'cterm': '16'}
    let white       = {'gui': '#F8F8F0', 'cterm': '252'}
    let brownish    = {'gui': '#BCA3A3', 'cterm': '225'}
    let blue        = {'gui': '#66D9EF', 'cterm': '81'}
    let grey        = {'gui': '#8F8F8F', 'cterm': '241'}
    let darkblue    = {'gui': '#13354A', 'cterm': '24'}
    let grey2       = {'gui': '#89807D', 'cterm': '181'}
    let darkgrey    = {'gui': '#4C4745', 'cterm': '239'}
    let darkred     = {'gui': '#960050', 'cterm': '162'}
    let blackred    = {'gui': '#1E0010', 'cterm': '89'}
    let green       = {'gui': '#A6E22E', 'cterm': '118'}
    let blackgrey   = {'gui': '#232526', 'cterm': '235'}
    let bluegrey    = {'gui': '#465457', 'cterm': '67'}
    let orange      = {'gui': '#FD971F', 'cterm': '208'}
    let grey3       = {'gui': '#808080', 'cterm': '242'}
    let weirdgold   = {'gui': '#C4BE89', 'cterm': '193'}
    let whitegold   = {'gui': '#FFE792', 'cterm': '222'}
    let weird       = {'gui': '#7E8E91', 'cterm': '245'}
    let red         = {'gui': '#FF0000', 'cterm': '52'}
    let indigo      = {'gui': '#7070F0', 'cterm': '17'}
    let cyan        = {'gui': '#70F0F0', 'cterm': '17'}
    let bluegrey2   = {'gui': '#455354', 'cterm': '238'}
    let black2      = {'gui': '#080808', 'cterm': '232'}
    let redorange   = {'gui': '#ef5939', 'cterm': '166'}
    let threes      = {'gui': '#333333', 'cterm': '238'}
    let bg          = {'gui': '#272822', 'cterm': '233'}
    let bluegrey3   = {'gui': '#293739', 'cterm': '23'}
    let greyey      = {'gui': '#403D3D', 'cterm': '235'}
    let bright      = {'gui': '#FFFFFF', 'cterm': '231'}
    let grey4       = {'gui': '#75715E', 'cterm': '59'}
    let grey5       = {'gui': '#3E3D32', 'cterm': '235'}
    let grey6       = {'gui': '#3B3A32', 'cterm': '236'}
    let linenr      = {'gui': '#BCBCBC', 'cterm': '250'}

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [white,       bg,          none,      none]
    let highlight_group.Visual       = [none,        greyey,      none,      none]
    let highlight_group.VisualNOS    = [none,        greyey,      boldunderline, none]
    " Cursor
    let highlight_group.Cursor       = [black,       white,       none,      none]
    let highlight_group.CursorLine   = [none,        grey5,       none,      none]
    let highlight_group.CursorColumn = highlight_group.CursorLine
    " Statusline
    let highlight_group.StatusLine   = [white,       bluegrey2,   bold,      none]
    let highlight_group.StatusLineNC = [black2,      grey3,       none,      none]
    let highlight_group.WildMenu     = [blue,        black,       none,      none]
    let highlight_group.StatusLineTerm = highlight_group.StatusLine
    let highlight_group.StatusLineTermNC = highlight_group.StatusLineNC
    " Sidebar
    let highlight_group.LineNr       = [linenr,      grey6,   none,      none]
    let highlight_group.CursorLineNr = [orange,      none,        none,      none]
    let highlight_group.FoldColumn   = [bluegrey,    black,       none,      none]
    let highlight_group.SignColumn   = [green,       blackgrey,   none,      none]
    let highlight_group.VertSplit    = [grey3,       black2,      bold,      none]
    let highlight_group.ColorColumn  = [none,        grey6,   none,      none]
    " Fold
    let highlight_group.Folded       = [bluegrey,    black,       none,      none]
    " Tabline
    " let highlight_group.TabLineSel   = highlight_group.WildMenu
    let highlight_group.TabLineFill  = [bg,          bg,          none,      none]
    let highlight_group.TabLine      = [grey3,       none,        none,      none]
    " Search
    let highlight_group.Search       = [black,       whitegold,   none,      none]
    let highlight_group.IncSearch    = [black,       weirdgold,   none,      none]
    " Message
    let highlight_group.ErrorMsg     = [pink,        blackgrey,   bold,      none]
    let highlight_group.ModeMsg      = [yellow,      none,        bold,      none]
    let highlight_group.MoreMsg      = [yellow,      none,        bold,      none]
    let highlight_group.Question     = [blue,        none,        bold,      none]
    let highlight_group.Repeat       = [pink,        none,        bold,      none]
    let highlight_group.Title        = [redorange,   none,        bold,      none]
    let highlight_group.WarningMsg   = [white,       threes,      bold,      none]
    " Completion
    let highlight_group.Pmenu        = [blue,        black,       none,      none]
    let highlight_group.PmenuSel     = [none,        grey3,       none,      none]
    let highlight_group.PmenuSbar    = [none,        black2,      none,      none]
    let highlight_group.PmenuThumb   = [blue,        bright,      none,      none]
    " Diff
    let highlight_group.DiffAdd      = [none,        darkblue,    none,      none]
    let highlight_group.DiffChange   = [grey2,       darkgrey,    none,      none]
    let highlight_group.DiffDelete   = [darkred,     blackred,    bold,      none]
    let highlight_group.DiffText     = [none,        darkgrey,    bolditalic, none]
    " Miscellaneous
    let highlight_group.Keyword      = [pink,        none,        bold,      none]
    let highlight_group.Label        = [yellow,      none,        none,      none]
    let highlight_group.Macro        = [weirdgold,   none,        italic,    none]
    let highlight_group.Directory    = [green,       none,        bold,      none]
    let highlight_group.NonText      = [grey4,       none,        bold,      none]
    let highlight_group.SpecialKey   = [grey4,       none,        italic,    none]
    let highlight_group.Conceal      = [none,        none,        none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Boolean      = [purple,      none,        none,      none]
    let highlight_group.Character    = [yellow,      none,        none,      none]
    let highlight_group.Debug        = [brownish,    none,        bold,      none]
    let highlight_group.Define       = [blue,        none,        none,      none]
    let highlight_group.Delimiter    = [grey,        none,        none,      none]
    let highlight_group.Exception    = [green,       none,        bold,      none]
    let highlight_group.Float        = [purple,      none,        none,      none]
    let highlight_group.Function     = [green,       none,        none,      none]
    let highlight_group.Number       = [purple,      none,        none,      none]
    let highlight_group.String       = [yellow,      none,        none,      none]
    let highlight_group.Comment      = [grey4,       none,        none,      none]
    let highlight_group.Constant     = [purple,      none,        bold,      none]
    let highlight_group.Conditional  = [pink,        none,        bold,      none]
    let highlight_group.String       = [yellow,      none,        none,      none]
    let highlight_group.Identifier   = [orange,      none,        none,      none]
    let highlight_group.Statement    = [pink,        none,        bold,      none]
    let highlight_group.PreCondit    = [green,       none,        bold,      none]
    let highlight_group.PreProc      = [green,       none,        none,      none]
    let highlight_group.Typedef      = [blue,        none,        none,      none]
    let highlight_group.Type         = [blue,        none,        none,      none]
    let highlight_group.SpecialChar  = [pink,        none,        bold,      none]
    let highlight_group.SpecialComment = [weird,     none,        bold,      none]
    let highlight_group.Special      = [blue,        none,        italic,    none]
    let highlight_group.StorageClass = [orange,      none,        italic,    none]
    let highlight_group.Structure    = [blue,        none,        none,    none]
    let highlight_group.Underlined   = [grey3,       none,        underline, none]
    let highlight_group.Ignore       = [grey3,       none,        none,      none]
    let highlight_group.Error        = [yellow,      blackred,    none,      none]
    let highlight_group.Tag          = [pink,        none,        italic,    none]
    let highlight_group.Todo         = [white,       none,        bold,      none]

    "*** Spell ***"
    let highlight_group.SpellBad     = [none,        none,        undercurl, red]
    let highlight_group.SpellCap     = [none,        none,        undercurl, indigo]
    let highlight_group.SpellLocal   = [none,        none,        undercurl, cyan]
    let highlight_group.SpellRare    = [none,        none,        undercurl, bright]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen   = [black,       orange,      bold,      none]
    let highlight_group.Operator     = [pink,        none,        none,      none]

    let bg_none    = {'gui': bg.gui, 'cterm': 'NONE'}
  endif

  if get(g:, 'colorscheme_no_background', 0)
    let highlight_group.Normal[1]      = bg_none
    let highlight_group.TabLineFill[1] = bg_none
    let highlight_group.VertSplit[1]   = bg_none
    let highlight_group.SignColumn[1]  = bg_none
  endif

  if get(g:, 'colorscheme_no_italic', 0)
    let italic.gui = 'NONE'
    let italic.cterm = 'NONE'
  endif

  for [group, colors] in items(highlight_group)
    execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                \  group,
                \  colors[0]['gui'],
                \  colors[1]['gui'],
                \  colors[2]['gui'],
                \  colors[3]['gui'],
                \  colors[0]['cterm'],
                \  colors[1]['cterm'],
                \  colors[2]['cterm']
                \ )
  endfor
endfunction
call s:set()

