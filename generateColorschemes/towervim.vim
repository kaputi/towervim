" Maintainer: Eduardo Lonighi eduloni3@gmail.com

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='towervim'

hi Normal guifg=#d8dee9 ctermfg=254 guibg=#212733 ctermbg=235 gui=NONE cterm=NONE
hi Comment guifg=#5c6773 ctermfg=242 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#95e6cb ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#95e6cb ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi SpecialComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi Todo guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Underlined guifg=#4ec9b0 ctermfg=79 gui=underline cterm=underline
hi Cursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#ffc44c ctermfg=221 guibg=#2c323c ctermbg=236 gui=bold cterm=bold
hi SignColumn guifg=NONE ctermfg=NONE guibg=#212733 ctermbg=235 gui=NONE cterm=NONE
hi Conceal guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#1e1e1e ctermfg=234 guibg=#bbe67e ctermbg=150 gui=NONE cterm=NONE
hi DiffChange guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi DiffDelete guifg=#1e1e1e ctermfg=234 guibg=#f07178 ctermbg=204 gui=NONE cterm=NONE
hi DiffText guifg=#1e1e1e ctermfg=234 guibg=#ffc44c ctermbg=221 gui=NONE cterm=NONE
hi ErrorMsg guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#1da1f2 ctermfg=39 guibg=#5c6370 ctermbg=241 gui=NONE cterm=NONE
hi LineNr guifg=#4b5263 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NonText guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#d4bfff ctermfg=183 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi PmenuSel guifg=#ffc44c ctermfg=221 guibg=#343f4c ctermbg=238 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#3b4048 ctermbg=238 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#abb2bf ctermbg=249 gui=NONE cterm=NONE
hi Question guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#1e1e1e ctermfg=234 guibg=#ffc44c ctermbg=221 gui=NONE cterm=NONE
hi Search guifg=#1da1f2 ctermfg=39 guibg=#ffc44c ctermbg=221 gui=NONE cterm=NONE
hi SpecialKey guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineTerm guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#2c323c ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#212733 ctermbg=235 gui=NONE cterm=NONE
hi Terminal guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#3e4452 ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#1e1e1e ctermfg=234 guibg=#5ccfe6 ctermbg=80 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#1e1e1e ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSComment guifg=#5c6773 ctermfg=242 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi TSError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctDelimiter guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctSpecial guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstBuiltin guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstMacro guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringRegex guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSString guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringEscape guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNumber guifg=#95e6cb ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFloat guifg=#95e6cb ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAnnotation guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAttribute guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNamespace guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncBuiltin guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFunction guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncMacro guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameter guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameterReference guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSField guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstructor guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConditional guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSRepeat guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLabel guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeyword guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordOperator guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSOperator guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSException guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTypeBuiltin guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStructure guifg=#ff00ff ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSInclude guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariableBuiltin guifg=#80d4ff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSText guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStrong guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSEmphasis guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSUnderline guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTitle guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLiteral guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSURI guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTag guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagDelimiter guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlEndTag guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlLink guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi htmlSpecialChar guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBold guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeBlock guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH3 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH6 guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownLinkDelimiter guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsUnderlineError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsUnderlineWarning guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsUnderlineInformation guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsUnderlineHint guifg=#729cb3 ctermfg=73 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsSignError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignHint guifg=#4fc1ff ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextHint guifg=#4fc1ff ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickScopePrimary guifg=#00c7df ctermfg=44 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi QuickScopeSecondary guifg=#ef5f70 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchWord guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen guifg=#ffcc66 ctermfg=221 guibg=#f07178 ctermbg=204 gui=NONE cterm=NONE
hi MatchWordCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParenCur guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CocExplorerIndentLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#ffae57 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2First guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2Second guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyBracket guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#4ec9b0 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyVar guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#ffc44c ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFooter guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKey guifg=#d4bfff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeySeperator guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyGroup guifg=#4fc1ff ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyDesc guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsAdd guifg=#587c0c ctermfg=64 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsChange guifg=#0c7d9d ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsDelete guifg=#94151b ctermfg=88 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#5ccfe6 ctermfg=80 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#bbe67e ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi debugPc guifg=NONE ctermfg=NONE guibg=#4ec9b0 ctermbg=79 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#f07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
