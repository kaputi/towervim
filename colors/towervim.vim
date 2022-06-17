set t_Co=256
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'towervim'

if &background == 'dark'

hi Normal guifg=#D8DEE9 ctermfg=253 guibg=#212733 ctermbg=235 
hi! link NormalFloat Normal 
hi Comment guifg=#616161 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi Constant guifg=#FFC44C ctermfg=221 
hi String guifg=#FFC44C ctermfg=221 
hi Character guifg=#FFC44C ctermfg=221 
hi Number guifg=#bbe67e ctermfg=150 
hi Boolean guifg=#5CCFE6 ctermfg=80 
hi Float guifg=#bbe67e ctermfg=150 
hi Identifier guifg=#5CCFE6 ctermfg=80 
hi Function guifg=#FFC44C ctermfg=221 
hi Statement guifg=#D4BFFF ctermfg=183 
hi Conditional guifg=#D4BFFF ctermfg=183 
hi Repeat guifg=#D4BFFF ctermfg=183 
hi Label guifg=#80D4FF ctermfg=117 
hi Operator guifg=#D4BFFF ctermfg=183 
hi Keyword guifg=#5CCFE6 ctermfg=80 
hi Exception guifg=#D4BFFF ctermfg=183 
hi PreProc guifg=#FFC44C ctermfg=221 
hi Include guifg=#D4BFFF ctermfg=183 
hi Define guifg=#D4BFFF ctermfg=183 
hi Title guifg=#4EC9B0 ctermfg=79 
hi Macro guifg=#D4BFFF ctermfg=183 
hi PreCondit guifg=#80D4FF ctermfg=117 
hi Type guifg=#80D4FF ctermfg=117 
hi StorageClass guifg=#80D4FF ctermfg=117 
hi Structure guifg=#FFC44C ctermfg=221 
hi Typedef guifg=#FFC44C ctermfg=221 
hi Special guifg=#5CCFE6 ctermfg=80 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi SpecialComment guifg=#757575 ctermfg=243 
hi Error guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse 
hi! link NvimInternalError Error 
hi Todo guifg=#D4BFFF ctermfg=183 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic 
hi Underlined guifg=#4EC9B0 ctermfg=79 gui=underline cterm=underline 
hi Cursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse 
hi! link ColorColumn CursorColumn 
hi CursorLineNr guifg=#FFC44C ctermfg=221 guibg=#2C323C ctermbg=236 gui=bold cterm=bold 
hi! link SignColumn Normal 
hi Conceal guifg=#757575 ctermfg=243 
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2C323C ctermbg=236 
hi! link CursorLine CursorColumn 
hi Directory guifg=#5CCFE6 ctermfg=80 
hi DiffAdd guifg=#1E1E1E ctermfg=234 guibg=#98971a ctermbg=100 
hi DiffChange guifg=#FFC44C ctermfg=221 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi DiffDelete guifg=#1E1E1E ctermfg=234 guibg=#F07178 ctermbg=204 
hi DiffText guifg=#1E1E1E ctermfg=234 guibg=#FFC44C ctermbg=221 
hi! link ErrorMsg Error 
hi vertSplit guifg=#424242 ctermfg=238 
hi WinSeparator guifg=#424242 ctermfg=238 guibg=NONE ctermbg=NONE 
hi Folded guifg=#616161 ctermfg=241 guibg=#2C323C ctermbg=236 gui=italic cterm=italic 
hi IncSearch guifg=#1da1f2 ctermfg=39 guibg=#757575 ctermbg=243 
hi LineNr guifg=#757575 ctermfg=243 
hi NonText guifg=#616161 ctermfg=241 
hi Pmenu guifg=#D4BFFF ctermfg=183 guibg=#212121 ctermbg=234 
hi PmenuSel guifg=#FFC44C ctermfg=221 guibg=#616161 ctermbg=241 
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#616161 ctermbg=241 
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#ABB2BF ctermbg=249 
hi Question guifg=#D4BFFF ctermfg=183 
hi QuickFixLine guifg=#1E1E1E ctermfg=234 guibg=#FFC44C ctermbg=221 
hi Search guifg=#D8DEE9 ctermfg=253 guibg=#757575 ctermbg=243 
hi SpecialKey guifg=#616161 ctermfg=241 
hi SpellBad guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi SpellCap guifg=#FFD57F ctermfg=222 
hi SpellLocal guifg=#FFD57F ctermfg=222 
hi SpellRare guifg=#FFD57F ctermfg=222 
hi StatusLine guifg=#ABB2BF ctermfg=249 guibg=#616161 ctermbg=241 
hi StatusLineNC guifg=#757575 ctermfg=243 
hi StatusLineTerm guifg=#ABB2BF ctermfg=249 guibg=#616161 ctermbg=241 
hi StatusLineTermNC guifg=#616161 ctermfg=241 
hi TabLine guifg=#757575 ctermfg=243 
hi TabLineSel guifg=#ABB2BF ctermfg=249 
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#212733 ctermbg=235 
hi Terminal guifg=#ABB2BF ctermfg=249 guibg=#1E1E1E ctermbg=234 
hi Visual guifg=NONE ctermfg=NONE guibg=#424242 ctermbg=238 
hi VisualNOS guifg=#424242 ctermfg=238 
hi WarningMsg guifg=#FFC44C ctermfg=221 
hi WildMenu guifg=#1E1E1E ctermfg=234 guibg=#5CCFE6 ctermbg=80 
hi EndOfBuffer guifg=#1E1E1E ctermfg=234 
hi diffAdded guifg=#98971a ctermfg=100 
hi diffRemoved guifg=#F07178 ctermfg=204 
hi diffFileId guifg=#5CCFE6 ctermfg=80 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse 
hi diffFile guifg=#616161 ctermfg=241 
hi diffNewFile guifg=#98971a ctermfg=100 
hi diffOldFile guifg=#F07178 ctermfg=204 
hi debugPc guifg=NONE ctermfg=NONE guibg=#4EC9B0 ctermbg=79 
hi debugBreakpoint guifg=#F07178 ctermfg=204 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse 
hi MatchWord guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchWordCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchParenCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline,reverse cterm=underline,reverse 
hi! link TSComment Comment 
hi TSError guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi TSPunctDelimiter guifg=#ABB2BF ctermfg=249 
hi TSPunctBracket guifg=#ABB2BF ctermfg=249 
hi TSPunctSpecial guifg=#ABB2BF ctermfg=249 
hi TSConstant guifg=#FFC44C ctermfg=221 
hi TSConstBuiltin guifg=#5CCFE6 ctermfg=80 
hi TSConstMacro guifg=#4EC9B0 ctermfg=79 
hi TSStringRegex guifg=#FFC44C ctermfg=221 
hi TSString guifg=#bbe67e ctermfg=150 
hi TSStringEscape guifg=#FFD57F ctermfg=222 
hi TSCharacter guifg=#FFC44C ctermfg=221 
hi TSNumber guifg=#bbe67e ctermfg=150 
hi TSBoolean guifg=#5CCFE6 ctermfg=80 
hi TSFloat guifg=#bbe67e ctermfg=150 
hi TSAnnotation guifg=#FFC44C ctermfg=221 
hi TSAttribute guifg=#4EC9B0 ctermfg=79 
hi TSNamespace guifg=#4EC9B0 ctermfg=79 
hi TSFuncBuiltin guifg=#FFC44C ctermfg=221 
hi TSFunction guifg=#FFC44C ctermfg=221 
hi TSFuncMacro guifg=#FFC44C ctermfg=221 
hi TSParameter guifg=#80D4FF ctermfg=117 
hi TSParameterReference guifg=#80D4FF ctermfg=117 
hi TSMethod guifg=#FFC44C ctermfg=221 
hi TSField guifg=#80D4FF ctermfg=117 
hi TSProperty guifg=#80D4FF ctermfg=117 
hi TSConstructor guifg=#4EC9B0 ctermfg=79 
hi TSConditional guifg=#D4BFFF ctermfg=183 
hi TSRepeat guifg=#D4BFFF ctermfg=183 
hi TSLabel guifg=#80D4FF ctermfg=117 
hi TSKeyword guifg=#FFC44C ctermfg=221 
hi TSKeywordFunction guifg=#D4BFFF ctermfg=183 
hi TSKeywordOperator guifg=#5CCFE6 ctermfg=80 
hi TSOperator guifg=#ABB2BF ctermfg=249 
hi TSException guifg=#D4BFFF ctermfg=183 
hi TSType guifg=#4EC9B0 ctermfg=79 
hi TSTypeBuiltin guifg=#5CCFE6 ctermfg=80 
hi TTSStructure guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSInclude guifg=#D4BFFF ctermfg=183 
hi TSVariable guifg=#80D4FF ctermfg=117 
hi TSVariableBuiltin guifg=#80D4FF ctermfg=117 
hi TSText guifg=#FFC44C ctermfg=221 
hi TSStrong guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSEmphasis guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSUnderline guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSTitle guifg=#FFC44C ctermfg=221 
hi TSLiteral guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSURI guifg=#608B4E ctermfg=65 
hi TSTag guifg=#5CCFE6 ctermfg=80 
hi TSTagDelimiter guifg=#F07178 ctermfg=204 
hi htmlArg guifg=#FFD57F ctermfg=222 
hi htmlBold guifg=#FFD57F ctermfg=222 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi htmlEndTag guifg=#ABB2BF ctermfg=249 
hi htmlH1 guifg=#5CCFE6 ctermfg=80 
hi htmlH2 guifg=#5CCFE6 ctermfg=80 
hi htmlH3 guifg=#5CCFE6 ctermfg=80 
hi htmlH4 guifg=#5CCFE6 ctermfg=80 
hi htmlH5 guifg=#5CCFE6 ctermfg=80 
hi htmlH6 guifg=#5CCFE6 ctermfg=80 
hi htmlItalic guifg=#D4BFFF ctermfg=183 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi htmlLink guifg=#4EC9B0 ctermfg=79 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi htmlSpecialChar guifg=#FFD57F ctermfg=222 
hi htmlSpecialTagName guifg=#5CCFE6 ctermfg=80 
hi htmlTag guifg=#ABB2BF ctermfg=249 
hi htmlTagN guifg=#5CCFE6 ctermfg=80 
hi htmlTagName guifg=#5CCFE6 ctermfg=80 
hi htmlTitle guifg=#ABB2BF ctermfg=249 
hi markdownBlockquote guifg=#757575 ctermfg=243 
hi markdownBold guifg=#FFD57F ctermfg=222 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi markdownCode guifg=#98971a ctermfg=100 
hi markdownCodeBlock guifg=#98971a ctermfg=100 
hi markdownCodeDelimiter guifg=#98971a ctermfg=100 
hi markdownH1 guifg=#5CCFE6 ctermfg=80 
hi markdownH2 guifg=#5CCFE6 ctermfg=80 
hi markdownH3 guifg=#5CCFE6 ctermfg=80 
hi markdownH4 guifg=#5CCFE6 ctermfg=80 
hi markdownH5 guifg=#5CCFE6 ctermfg=80 
hi markdownH6 guifg=#5CCFE6 ctermfg=80 
hi markdownHeadingDelimiter guifg=#F07178 ctermfg=204 
hi markdownHeadingRule guifg=#757575 ctermfg=243 
hi markdownId guifg=#D4BFFF ctermfg=183 
hi markdownIdDeclaration guifg=#5CCFE6 ctermfg=80 
hi markdownIdDelimiter guifg=#D4BFFF ctermfg=183 
hi markdownItalic guifg=#D4BFFF ctermfg=183 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi markdownLinkDelimiter guifg=#D4BFFF ctermfg=183 
hi markdownLinkText guifg=#5CCFE6 ctermfg=80 
hi markdownListMarker guifg=#F07178 ctermfg=204 
hi markdownOrderedListMarker guifg=#F07178 ctermfg=204 
hi markdownRule guifg=#757575 ctermfg=243 
hi markdownUrl guifg=#4EC9B0 ctermfg=79 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi DiagnosticUnderlineError guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineWarn guifg=#FFC44C ctermfg=221 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineInfo guifg=#FFC44C ctermfg=221 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineHint guifg=#80D4FF ctermfg=117 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticSignError guifg=#CC241D ctermfg=160 
hi DiagnosticSignWarn guifg=#FFC44C ctermfg=221 
hi DiagnosticSignInfo guifg=#FFC44C ctermfg=221 
hi DiagnosticSignHint guifg=#80D4FF ctermfg=117 
hi DiagnosticVirtualTextError guifg=#CC241D ctermfg=160 
hi DiagnosticVirtualTextWarn guifg=#FFC44C ctermfg=221 
hi DiagnosticVirtualTextInfo guifg=#FFC44C ctermfg=221 
hi DiagnosticVirtualTextHint guifg=#80D4FF ctermfg=117 
hi LspDiagnosticsUnderlineError guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineWarning guifg=#FFC44C ctermfg=221 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineInformation guifg=#FFC44C ctermfg=221 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineHint guifg=#80D4FF ctermfg=117 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsSignError guifg=#CC241D ctermfg=160 
hi LspDiagnosticsSignWarning guifg=#FFC44C ctermfg=221 
hi LspDiagnosticsSignInformation guifg=#FFC44C ctermfg=221 
hi LspDiagnosticsSignHint guifg=#80D4FF ctermfg=117 
hi LspDiagnosticsVirtualTextError guifg=#CC241D ctermfg=160 
hi LspDiagnosticsVirtualTextWarning guifg=#FFC44C ctermfg=221 
hi LspDiagnosticsVirtualTextInformation guifg=#FFC44C ctermfg=221 
hi LspDiagnosticsVirtualTextHint guifg=#80D4FF ctermfg=117 
hi CocExplorerIndentLine guifg=#757575 ctermfg=243 
hi CocExplorerBufferRoot guifg=#4EC9B0 ctermfg=79 
hi CocExplorerFileRoot guifg=#4EC9B0 ctermfg=79 
hi CocExplorerBufferFullPath guifg=#757575 ctermfg=243 
hi CocExplorerFileFullPath guifg=#757575 ctermfg=243 
hi CocExplorerBufferReadonly guifg=#D4BFFF ctermfg=183 
hi CocExplorerBufferModified guifg=#D4BFFF ctermfg=183 
hi CocExplorerBufferNameVisible guifg=#FFC44C ctermfg=221 
hi CocExplorerFileReadonly guifg=#D4BFFF ctermfg=183 
hi CocExplorerFileModified guifg=#D4BFFF ctermfg=183 
hi CocExplorerFileHidden guifg=#757575 ctermfg=243 
hi CocExplorerHelpLine guifg=#D4BFFF ctermfg=183 
hi EasyMotionTarget guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi EasyMotionTarget2First guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi EasyMotionTarget2Second guifg=#CC241D ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi StartifyNumber guifg=#FFC44C ctermfg=221 
hi StartifySelect guifg=#98971a ctermfg=100 
hi StartifyBracket guifg=#5CCFE6 ctermfg=80 
hi StartifySpecial guifg=#4EC9B0 ctermfg=79 
hi StartifyVar guifg=#5CCFE6 ctermfg=80 
hi StartifyPath guifg=#5CCFE6 ctermfg=80 
hi StartifyFile guifg=#FFC44C ctermfg=221 
hi StartifySlash guifg=#5CCFE6 ctermfg=80 
hi StartifyHeader guifg=#5CCFE6 ctermfg=80 
hi StartifySection guifg=#D4BFFF ctermfg=183 
hi StartifyFooter guifg=#98971a ctermfg=100 
hi WhichKey guifg=#D4BFFF ctermfg=183 
hi WhichKeySeperator guifg=#98971a ctermfg=100 
hi WhichKeyGroup guifg=#80D4FF ctermfg=117 
hi WhichKeyDesc guifg=#5CCFE6 ctermfg=80 
hi GitSignsAdd guifg=#608B4E ctermfg=65 
hi GitSignsChange guifg=#1da1f2 ctermfg=39 
hi GitSignsDelete guifg=#CC241D ctermfg=160 
hi VimwikiHeader1 guifg=#1da1f2 ctermfg=39 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader2 guifg=#D4BFFF ctermfg=183 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader3 guifg=#5CCFE6 ctermfg=80 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader4 guifg=#C586C0 ctermfg=175 gui=bold,underline cterm=bold,underline

else

hi Normal guifg=#212733 ctermfg=235 guibg=#D8DEE9 ctermbg=253 
hi! link NormalFloat Normal 
hi Comment guifg=#757575 ctermfg=243 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi Constant guifg=#b58900 ctermfg=136 
hi String guifg=#b58900 ctermfg=136 
hi Character guifg=#b58900 ctermfg=136 
hi Number guifg=#5f8700 ctermfg=64 
hi Boolean guifg=#1da0ff ctermfg=39 
hi Float guifg=#5f8700 ctermfg=64 
hi Identifier guifg=#1da0ff ctermfg=39 
hi Function guifg=#b58900 ctermfg=136 
hi Statement guifg=#d70087 ctermfg=162 
hi Conditional guifg=#d70087 ctermfg=162 
hi Repeat guifg=#d70087 ctermfg=162 
hi Label guifg=#005fff ctermfg=27 
hi Operator guifg=#d70087 ctermfg=162 
hi Keyword guifg=#1da0ff ctermfg=39 
hi Exception guifg=#d70087 ctermfg=162 
hi PreProc guifg=#b58900 ctermfg=136 
hi Include guifg=#d70087 ctermfg=162 
hi Define guifg=#d70087 ctermfg=162 
hi Title guifg=#2aa198 ctermfg=36 
hi Macro guifg=#d70087 ctermfg=162 
hi PreCondit guifg=#005fff ctermfg=27 
hi Type guifg=#005fff ctermfg=27 
hi StorageClass guifg=#005fff ctermfg=27 
hi Structure guifg=#b58900 ctermfg=136 
hi Typedef guifg=#b58900 ctermfg=136 
hi Special guifg=#1da0ff ctermfg=39 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi SpecialComment guifg=#616161 ctermfg=241 
hi Error guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse 
hi! link NvimInternalError Error 
hi Todo guifg=#d70087 ctermfg=162 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic 
hi Underlined guifg=#2aa198 ctermfg=36 gui=underline cterm=underline 
hi Cursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse 
hi! link ColorColumn CursorColumn 
hi CursorLineNr guifg=#b58900 ctermfg=136 guibg=#bdbdbd ctermbg=250 gui=bold cterm=bold 
hi! link SignColumn Normal 
hi Conceal guifg=#616161 ctermfg=241 
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#bdbdbd ctermbg=250 
hi! link CursorLine CursorColumn 
hi Directory guifg=#1da0ff ctermfg=39 
hi DiffAdd guifg=#ABB2BF ctermfg=249 guibg=#008700 ctermbg=28 
hi DiffChange guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi DiffDelete guifg=#ABB2BF ctermfg=249 guibg=#af0000 ctermbg=124 
hi DiffText guifg=#ABB2BF ctermfg=249 guibg=#b58900 ctermbg=136 
hi! link ErrorMsg Error 
hi vertSplit guifg=#424242 ctermfg=238 
hi WinSeparator guifg=#424242 ctermfg=238 guibg=NONE ctermbg=NONE 
hi Folded guifg=#757575 ctermfg=243 guibg=#bdbdbd ctermbg=250 gui=italic cterm=italic 
hi IncSearch guifg=#0087af ctermfg=31 guibg=#616161 ctermbg=241 
hi LineNr guifg=#616161 ctermfg=241 
hi NonText guifg=#757575 ctermfg=243 
hi Pmenu guifg=#d70087 ctermfg=162 guibg=#212121 ctermbg=234 
hi PmenuSel guifg=#b58900 ctermfg=136 guibg=#757575 ctermbg=243 
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#757575 ctermbg=243 
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#1E1E1E ctermbg=234 
hi Question guifg=#d70087 ctermfg=162 
hi QuickFixLine guifg=#ABB2BF ctermfg=249 guibg=#b58900 ctermbg=136 
hi Search guifg=#212733 ctermfg=235 guibg=#616161 ctermbg=241 
hi SpecialKey guifg=#757575 ctermfg=243 
hi SpellBad guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi SpellCap guifg=#FFD57F ctermfg=222 
hi SpellLocal guifg=#FFD57F ctermfg=222 
hi SpellRare guifg=#FFD57F ctermfg=222 
hi StatusLine guifg=#1E1E1E ctermfg=234 guibg=#757575 ctermbg=243 
hi StatusLineNC guifg=#616161 ctermfg=241 
hi StatusLineTerm guifg=#1E1E1E ctermfg=234 guibg=#757575 ctermbg=243 
hi StatusLineTermNC guifg=#757575 ctermfg=243 
hi TabLine guifg=#616161 ctermfg=241 
hi TabLineSel guifg=#1E1E1E ctermfg=234 
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#D8DEE9 ctermbg=253 
hi Terminal guifg=#1E1E1E ctermfg=234 guibg=#ABB2BF ctermbg=249 
hi Visual guifg=NONE ctermfg=NONE guibg=#424242 ctermbg=238 
hi VisualNOS guifg=#424242 ctermfg=238 
hi WarningMsg guifg=#b58900 ctermfg=136 
hi WildMenu guifg=#ABB2BF ctermfg=249 guibg=#1da0ff ctermbg=39 
hi EndOfBuffer guifg=#ABB2BF ctermfg=249 
hi diffAdded guifg=#008700 ctermfg=28 
hi diffRemoved guifg=#af0000 ctermfg=124 
hi diffFileId guifg=#1da0ff ctermfg=39 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse 
hi diffFile guifg=#757575 ctermfg=243 
hi diffNewFile guifg=#008700 ctermfg=28 
hi diffOldFile guifg=#af0000 ctermfg=124 
hi debugPc guifg=NONE ctermfg=NONE guibg=#2aa198 ctermbg=36 
hi debugBreakpoint guifg=#af0000 ctermfg=124 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse 
hi MatchWord guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchWordCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi MatchParenCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline,reverse cterm=underline,reverse 
hi! link TSComment Comment 
hi TSError guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi TSPunctDelimiter guifg=#1E1E1E ctermfg=234 
hi TSPunctBracket guifg=#1E1E1E ctermfg=234 
hi TSPunctSpecial guifg=#1E1E1E ctermfg=234 
hi TSConstant guifg=#b58900 ctermfg=136 
hi TSConstBuiltin guifg=#1da0ff ctermfg=39 
hi TSConstMacro guifg=#2aa198 ctermfg=36 
hi TSStringRegex guifg=#b58900 ctermfg=136 
hi TSString guifg=#5f8700 ctermfg=64 
hi TSStringEscape guifg=#FFD57F ctermfg=222 
hi TSCharacter guifg=#b58900 ctermfg=136 
hi TSNumber guifg=#5f8700 ctermfg=64 
hi TSBoolean guifg=#1da0ff ctermfg=39 
hi TSFloat guifg=#5f8700 ctermfg=64 
hi TSAnnotation guifg=#b58900 ctermfg=136 
hi TSAttribute guifg=#2aa198 ctermfg=36 
hi TSNamespace guifg=#2aa198 ctermfg=36 
hi TSFuncBuiltin guifg=#b58900 ctermfg=136 
hi TSFunction guifg=#b58900 ctermfg=136 
hi TSFuncMacro guifg=#b58900 ctermfg=136 
hi TSParameter guifg=#005fff ctermfg=27 
hi TSParameterReference guifg=#005fff ctermfg=27 
hi TSMethod guifg=#b58900 ctermfg=136 
hi TSField guifg=#005fff ctermfg=27 
hi TSProperty guifg=#005fff ctermfg=27 
hi TSConstructor guifg=#2aa198 ctermfg=36 
hi TSConditional guifg=#d70087 ctermfg=162 
hi TSRepeat guifg=#d70087 ctermfg=162 
hi TSLabel guifg=#005fff ctermfg=27 
hi TSKeyword guifg=#b58900 ctermfg=136 
hi TSKeywordFunction guifg=#d70087 ctermfg=162 
hi TSKeywordOperator guifg=#1da0ff ctermfg=39 
hi TSOperator guifg=#1E1E1E ctermfg=234 
hi TSException guifg=#d70087 ctermfg=162 
hi TSType guifg=#2aa198 ctermfg=36 
hi TSTypeBuiltin guifg=#1da0ff ctermfg=39 
hi TTSStructure guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSInclude guifg=#d70087 ctermfg=162 
hi TSVariable guifg=#005fff ctermfg=27 
hi TSVariableBuiltin guifg=#005fff ctermfg=27 
hi TSText guifg=#b58900 ctermfg=136 
hi TSStrong guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSEmphasis guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSUnderline guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSTitle guifg=#b58900 ctermfg=136 
hi TSLiteral guifg=#FF00FF ctermfg=13 guibg=#FF00FF ctermbg=13 
hi TSURI guifg=#5f8700 ctermfg=64 
hi TSTag guifg=#1da0ff ctermfg=39 
hi TSTagDelimiter guifg=#af0000 ctermfg=124 
hi htmlArg guifg=#FFD57F ctermfg=222 
hi htmlBold guifg=#FFD57F ctermfg=222 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi htmlEndTag guifg=#1E1E1E ctermfg=234 
hi htmlH1 guifg=#1da0ff ctermfg=39 
hi htmlH2 guifg=#1da0ff ctermfg=39 
hi htmlH3 guifg=#1da0ff ctermfg=39 
hi htmlH4 guifg=#1da0ff ctermfg=39 
hi htmlH5 guifg=#1da0ff ctermfg=39 
hi htmlH6 guifg=#1da0ff ctermfg=39 
hi htmlItalic guifg=#d70087 ctermfg=162 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi htmlLink guifg=#2aa198 ctermfg=36 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi htmlSpecialChar guifg=#FFD57F ctermfg=222 
hi htmlSpecialTagName guifg=#1da0ff ctermfg=39 
hi htmlTag guifg=#1E1E1E ctermfg=234 
hi htmlTagN guifg=#1da0ff ctermfg=39 
hi htmlTagName guifg=#1da0ff ctermfg=39 
hi htmlTitle guifg=#1E1E1E ctermfg=234 
hi markdownBlockquote guifg=#616161 ctermfg=241 
hi markdownBold guifg=#FFD57F ctermfg=222 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi markdownCode guifg=#008700 ctermfg=28 
hi markdownCodeBlock guifg=#008700 ctermfg=28 
hi markdownCodeDelimiter guifg=#008700 ctermfg=28 
hi markdownH1 guifg=#1da0ff ctermfg=39 
hi markdownH2 guifg=#1da0ff ctermfg=39 
hi markdownH3 guifg=#1da0ff ctermfg=39 
hi markdownH4 guifg=#1da0ff ctermfg=39 
hi markdownH5 guifg=#1da0ff ctermfg=39 
hi markdownH6 guifg=#1da0ff ctermfg=39 
hi markdownHeadingDelimiter guifg=#af0000 ctermfg=124 
hi markdownHeadingRule guifg=#616161 ctermfg=241 
hi markdownId guifg=#d70087 ctermfg=162 
hi markdownIdDeclaration guifg=#1da0ff ctermfg=39 
hi markdownIdDelimiter guifg=#d70087 ctermfg=162 
hi markdownItalic guifg=#d70087 ctermfg=162 guibg=NONE ctermbg=NONE gui=italic cterm=italic 
hi markdownLinkDelimiter guifg=#d70087 ctermfg=162 
hi markdownLinkText guifg=#1da0ff ctermfg=39 
hi markdownListMarker guifg=#af0000 ctermfg=124 
hi markdownOrderedListMarker guifg=#af0000 ctermfg=124 
hi markdownRule guifg=#616161 ctermfg=241 
hi markdownUrl guifg=#2aa198 ctermfg=36 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi DiagnosticUnderlineError guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineWarn guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineInfo guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticUnderlineHint guifg=#005fff ctermfg=27 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi DiagnosticSignError guifg=#d70000 ctermfg=160 
hi DiagnosticSignWarn guifg=#b58900 ctermfg=136 
hi DiagnosticSignInfo guifg=#b58900 ctermfg=136 
hi DiagnosticSignHint guifg=#005fff ctermfg=27 
hi DiagnosticVirtualTextError guifg=#d70000 ctermfg=160 
hi DiagnosticVirtualTextWarn guifg=#b58900 ctermfg=136 
hi DiagnosticVirtualTextInfo guifg=#b58900 ctermfg=136 
hi DiagnosticVirtualTextHint guifg=#005fff ctermfg=27 
hi LspDiagnosticsUnderlineError guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineWarning guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineInformation guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsUnderlineHint guifg=#005fff ctermfg=27 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl 
hi LspDiagnosticsSignError guifg=#d70000 ctermfg=160 
hi LspDiagnosticsSignWarning guifg=#b58900 ctermfg=136 
hi LspDiagnosticsSignInformation guifg=#b58900 ctermfg=136 
hi LspDiagnosticsSignHint guifg=#005fff ctermfg=27 
hi LspDiagnosticsVirtualTextError guifg=#d70000 ctermfg=160 
hi LspDiagnosticsVirtualTextWarning guifg=#b58900 ctermfg=136 
hi LspDiagnosticsVirtualTextInformation guifg=#b58900 ctermfg=136 
hi LspDiagnosticsVirtualTextHint guifg=#005fff ctermfg=27 
hi CocExplorerIndentLine guifg=#616161 ctermfg=241 
hi CocExplorerBufferRoot guifg=#2aa198 ctermfg=36 
hi CocExplorerFileRoot guifg=#2aa198 ctermfg=36 
hi CocExplorerBufferFullPath guifg=#616161 ctermfg=241 
hi CocExplorerFileFullPath guifg=#616161 ctermfg=241 
hi CocExplorerBufferReadonly guifg=#d70087 ctermfg=162 
hi CocExplorerBufferModified guifg=#d70087 ctermfg=162 
hi CocExplorerBufferNameVisible guifg=#b58900 ctermfg=136 
hi CocExplorerFileReadonly guifg=#d70087 ctermfg=162 
hi CocExplorerFileModified guifg=#d70087 ctermfg=162 
hi CocExplorerFileHidden guifg=#616161 ctermfg=241 
hi CocExplorerHelpLine guifg=#d70087 ctermfg=162 
hi EasyMotionTarget guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi EasyMotionTarget2First guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi EasyMotionTarget2Second guifg=#d70000 ctermfg=160 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi StartifyNumber guifg=#b58900 ctermfg=136 
hi StartifySelect guifg=#008700 ctermfg=28 
hi StartifyBracket guifg=#1da0ff ctermfg=39 
hi StartifySpecial guifg=#2aa198 ctermfg=36 
hi StartifyVar guifg=#1da0ff ctermfg=39 
hi StartifyPath guifg=#1da0ff ctermfg=39 
hi StartifyFile guifg=#b58900 ctermfg=136 
hi StartifySlash guifg=#1da0ff ctermfg=39 
hi StartifyHeader guifg=#1da0ff ctermfg=39 
hi StartifySection guifg=#d70087 ctermfg=162 
hi StartifyFooter guifg=#008700 ctermfg=28 
hi WhichKey guifg=#d70087 ctermfg=162 
hi WhichKeySeperator guifg=#008700 ctermfg=28 
hi WhichKeyGroup guifg=#005fff ctermfg=27 
hi WhichKeyDesc guifg=#1da0ff ctermfg=39 
hi GitSignsAdd guifg=#5f8700 ctermfg=64 
hi GitSignsChange guifg=#0087af ctermfg=31 
hi GitSignsDelete guifg=#d70000 ctermfg=160 
hi VimwikiHeader1 guifg=#0087af ctermfg=31 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader2 guifg=#d70087 ctermfg=162 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader3 guifg=#1da0ff ctermfg=39 gui=bold,underline cterm=bold,underline 
hi VimwikiHeader4 guifg=#8700af ctermfg=91 gui=bold,underline cterm=bold,underline

endif

