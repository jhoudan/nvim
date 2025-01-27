--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local c_uno_1 = hsl("#d6e9ff")
local c_uno_2 = hsl("#abb2bf")
local c_uno_3 = hsl("#6e88a6")
-- local c_uno_4 = hsl("#55606d")

local c_duo_1 = hsl("#c8ae9d")
local c_duo_2 = hsl("#e06c75")
local c_duo_3 = hsl("#dd672c")

local c_syntax_accent = hsl("#90C1F8")
local c_syntax_color_renamed = hsl("#33a0ff")
local c_syntax_color_added = hsl("#43d08a")
local c_syntax_color_modified = hsl("#e0c285")
local c_syntax_color_removed = hsl("#e05252")

local c_syntax_normal_bg = hsl("#0D1117")
local c_syntax_color_fg = hsl("#abb2bf")
local c_syntax_color_bg = hsl("#282c34")
-- local c_syntax_color_accent = hsl("#56b6c2")
-- local c_syntax_color_gutter = hsl("#636d83")
-- local c_syntax_color_selection = hsl("#3e4452")
local c_syntax_color_fold_bg = hsl("#5c6370")
-- local c_syntax_color_cursor_line = hsl("#2c323c")

-- let g:terminal_color_0 = "#282c34"
-- let g:terminal_color_8 = "#282c34"
-- let g:terminal_color_1 = "#e06c75"
-- let g:terminal_color_9 = "#e06c75"
-- let g:terminal_color_2 = "#98c379"
-- let g:terminal_color_10 = "#98c379"
-- let g:terminal_color_3 = "#e5c07b"
-- let g:terminal_color_11 = "#e5c07b"
-- let g:terminal_color_4 = "#61afef"
-- let g:terminal_color_12 = "#61afef"
-- let g:terminal_color_5 = "#c678dd"
-- let g:terminal_color_13 = "#c678dd"
-- let g:terminal_color_6 = "#56b6c2"
-- let g:terminal_color_14 = "#56b6c2"
-- let g:terminal_color_7 = "#dcdfe4"
-- let g:terminal_color_15 = "#dcdfe4"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    {}, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = c_syntax_color_fg, bg = c_syntax_color_bg }, -- Character under the cursor
    CurSearch      { fg = c_duo_2, bg = c_syntax_color_bg }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = c_duo_3 }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = c_syntax_color_added }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = c_syntax_color_modified }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = c_syntax_color_removed }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = c_syntax_color_renamed }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = c_duo_2 }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = c_uno_1, bg = c_syntax_normal_bg }, -- Normal text
    NormalFloat    { fg = c_uno_2, bg = c_syntax_color_bg }, -- Normal text in floating windows.
    FloatBorder    { fg = c_uno_2, bg = c_syntax_color_bg }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = c_uno_1, bg = c_syntax_normal_bg }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = c_syntax_color_fold_bg }, -- Any comment

    Constant       { fg = c_duo_2 }, -- (*) Any constant
    String         { fg = c_duo_1 }, --   A string constant: "this is a string"
    Character      { fg = c_duo_1 }, --   A character constant: 'c', '\n'
    Number         { fg = c_duo_2 }, --   A number constant: 234, 0xff
    Boolean        { fg = c_duo_3 }, --   A boolean constant: TRUE, false
    Float          { fg = c_duo_2 }, --   A floating point constant: 2.3e10

    Identifier     { fg = c_uno_2 }, -- (*) Any variable name
    Function       { fg = c_syntax_accent }, --   Function name (also: methods for classes)

    Statement      { fg = c_uno_1 }, -- (*) Any statement
    Conditional    { fg = c_uno_3 }, --   if, then, else, endif, switch, etc.
    Repeat         { fg = c_uno_3 }, --   for, do, while, etc.
    Label          { fg = c_uno_2 }, --   case, default, etc.
    Operator       { fg = c_uno_2 }, --   "sizeof", "+", "*", etc.
    Keyword        { Normal }, --   any other keyword
    Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = c_syntax_accent }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure      { fg = c_duo_2 }, --   struct, union, enum, etc.
    Typedef        { fg = c_duo_3 }, --   A typedef

    Special        { fg = c_uno_1 }, -- (*) Any special symbol
    SpecialChar    { fg = c_duo_2}, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = c_uno_2 }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = c_syntax_color_removed } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = c_syntax_color_modified } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = c_syntax_color_added } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = c_syntax_color_renamed } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { sp = c_syntax_color_removed, gui = "underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp = c_syntax_color_modified, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp = c_syntax_color_added, gui = "underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp = c_syntax_color_renamed, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym"@variable"                { fg = c_uno_2 }, -- Identifier
    sym"@variable.builtin"        { fg = c_duo_2 }, -- Identifier
    sym"@variable.member"         { fg = c_uno_3 }, -- Identifier

    sym"@constant"                { fg = c_uno_3 }, -- Constant
    sym"@constant.builtin"        { fg = c_uno_3 }, -- Special
    sym"@constant.macro"          { fg = c_duo_3 }, -- Define

    sym"@module"                  { fg = c_duo_2 }, -- Identifier
    sym"@module.builtin"          { fg = c_duo_2 }, -- Identifier
    sym"@label"                   { fg = c_uno_3 }, -- Label

    sym"@string"                  { fg = c_duo_1 }, -- String
    sym"@string.regexp"           { fg = c_syntax_color_removed}, -- SpecialChar
    sym"@string.escape"           { fg = c_uno_1}, -- SpecialChar
    sym"@string.special"          { fg = c_syntax_color_modified}, -- SpecialChar

    -- sym"@character"            { }, -- Character
    -- sym"@character.special"    { }, -- SpecialChar

    sym"@boolean"                 { fg = c_syntax_color_modified }, -- Boolean
    sym"@number"                  { fg = c_duo_2 }, -- Number
    sym"@float"                   { fg = c_duo_2 }, -- Float

    sym"@type"                    { fg = c_syntax_accent }, -- Type
    sym"@type.builtin"            { fg = c_syntax_accent }, -- Typedef
    sym"@type.definition"         { fg = c_uno_1 }, -- Typedef

    sym"@attribute"               { fg = c_syntax_color_modified }, -- Type
    -- sym"@attribute.builtin"    { fg = c_duo_2 }, -- Type
    -- sym"@property"             { fg = c_uno_1 }, -- Identifier

    sym"@function"                { Function }, -- Function
    sym"@function.builtin"        { fg = c_duo_2 }, -- Special
    sym"@function.call"           { Function }, -- Special
    -- sym"@function.macro"       { fg = c_duo_2 }, -- Macro
    -- sym"@function.method"      { Function }, -- Special
    -- sym"@function.method.call" { Function }, -- Special

    sym"@constructor"             { fg = c_uno_3 }, -- Special
    sym"@operator"                { fg = c_uno_3 }, -- Operator

    sym"@keyword"                 { Normal }, -- Keyword
    sym"@keyword.coroutine"       { Normal }, -- Keyword
    sym"@keyword.function"        { Normal }, -- Keyword
    sym"@keyword.operator"        { Normal }, -- Keyword
    sym"@keyword.import"          { Normal }, -- Keyword
    sym"@keyword.return"          { fg = c_duo_2 }, -- Keyword
    sym"@keyword.exception"       { fg = c_duo_2 }, -- Keyword
    -- sym"@keyword.conditional"  { Normal }, -- Keyword
    -- sym"@keyword.directive"    { Normal }, -- Keyword

    sym"@punctuation"             { fg = c_uno_2 }, -- Delimiter
    sym"@punctuation.bracket"     { fg = c_uno_2 }, -- Delimiter
    sym"@punctuation.special"     { fg = c_uno_2 }, -- Delimiter

    sym"@comment"                 { Comment }, -- Comment
    sym"@comment.documentation"   { Comment }, -- Comment

    sym"@diff.plus"               { fg = c_syntax_color_added }, -- Delimiter
    sym"@diff.minus"              { fg = c_syntax_color_modified }, -- Delimiter
    sym"@diff.delta"              { fg = c_syntax_color_renamed }, -- Delimiter

    sym"@text.literal"            { fg = c_duo_1 }, -- Comment
    -- sym"@text.reference"       { }, -- Identifier
    -- sym"@text.title"           { }, -- Title
    -- sym"@text.uri"             { }, -- Underlined
    -- sym"@text.underline"       { }, -- Underlined
    -- sym"@text.todo"            { }, -- Todo
    -- sym"@define"               { fg = c_duo_3 }, -- Define
    -- sym"@macro"                { }, -- Macro
    -- sym"@parameter"            { }, -- Identifier
    -- sym"@method"               { }, -- Function
    -- sym"@field"                { }, -- Identifier
    -- sym"@conditional"          { }, -- Conditional
    -- sym"@repeat"               { }, -- Repeat


    sym"@exception"               { fg = c_duo_3 }, -- Exception
    -- sym"@storageclass"         { }, -- StorageClass
    -- sym"@structure"            { }, -- Structure
    -- sym"@namespace"            { }, -- Identifier
    -- sym"@include"              { }, -- Include
    -- sym"@preproc"              { }, -- PreProc
    -- sym"@debug"                { }, -- Debug

    sym"@tag"                     { fg = c_uno_1 }, -- Tag
    sym"@tag.builtin"             { fg = c_uno_1 }, -- Tag
    sym"@tag.attribute"           { fg = c_uno_3 }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
