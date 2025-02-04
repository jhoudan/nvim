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
-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local c_color_text = hsl("#9c9eb4")
local c_color_subtext1 = hsl("#a6adc3")
local c_color_subtext0 = hsl("#9399ad")
local c_color_overlay2 = hsl("#7f8497")
local c_color_overlay1 = hsl("#686c7d")
local c_color_overlay0 = hsl("#646782")
local c_color_surface2 = hsl("#555873")
local c_color_surface1 = hsl("#31323c")
local c_color_surface0 = hsl("#1e2122")
local c_color_base = hsl("#0a0a0c")
local c_color_mantle = hsl("#020203")
local c_color_crust = hsl("#000000")
local c_color_seafoam = hsl("#8dd3c3")
local c_color_rose = hsl("#e77f88")
local c_color_ember = hsl("#d08770")
local c_color_storm = hsl("#8796aa")
local c_color_crimson = hsl("#bf616a")
local c_color_rust = hsl("#bc735c")
local c_color_frost = hsl("#96a8ad")
local c_color_sage = hsl("#9db89c")
local c_color_tide = hsl("#79a0aa")
local c_color_slate = hsl("#7c7d8c")
local c_color_drift = hsl("#8d9da1")
local c_color_charcoal = hsl("#636778")
local c_color_fog = hsl("#a0a0af")

local c_uno_1 = hsl("#d6e9ff")
local c_uno_3 = hsl("#6e88a6")

local c_color_red = hsl("#e06c75")
local c_color_green = hsl("#98c379")
local c_color_yellow = hsl("#e5c07b")
local c_color_blue = hsl("#61afef")
local c_color_purple = hsl("#c678dd")
local c_color_teal = hsl("#56b6c2")
local c_color_cream = hsl("#dcdfe4")
local c_syntax_color_renamed = hsl("#33a0ff")
local c_syntax_color_added = hsl("#43d08a")
local c_syntax_color_modified = hsl("#e0c285")
local c_syntax_color_removed = hsl("#e05252")

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
    ColorColumn({}), -- Columns set with 'colorcolumn'
    -- Conceal        { bg = c_duo_3 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor({ fg = c_color_subtext1 }), -- Character under the cursor
    CurSearch({ fg = c_color_rust, bg = c_color_surface0 }), -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ bg = c_color_mantle }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine({ bg = c_color_mantle }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory({ fg = c_color_tide }), -- Directory names (and other special names in listings)
    DiffAdd({ fg = c_syntax_color_added }), -- Diff mode: Added line |diff.txt|
    DiffChange({ fg = c_syntax_color_modified }), -- Diff mode: Changed line |diff.txt|
    DiffDelete({ fg = c_syntax_color_removed }), -- Diff mode: Deleted line |diff.txt|
    DiffText({ fg = c_syntax_color_renamed }), -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer({ fg = c_uno_3 }), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg({ fg = c_color_crimson }), -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { bg = c_duo_2 }, -- Line used for closed folds
    -- FoldColumn     { bg = c_duo_3 }, -- 'foldcolumn'
    SignColumn({ bg = c_color_base }), -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr({ fg = c_color_surface2 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove({ fg = c_color_surface2 }), -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow({ fg = c_color_surface2 }), -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen({ fg = c_color_ember }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal({ fg = c_color_text, bg = c_color_base }), -- Normal text
    NormalFloat({ fg = c_color_cream, bg = c_color_surface1 }), -- Normal text in floating windows.
    FloatBorder({ fg = c_color_cream, bg = c_color_surface1 }), -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu({ bg = c_color_surface1 }), -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search({ fg = c_color_crust, bg = c_color_yellow }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine({ fg = c_color_crimson, bg = c_color_crust }), -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { bg = c_color_grey_5 }, -- Tab pages line, not active tab page label
    -- TabLineFill    { bg = c_duo_2 }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual({ bg = c_color_surface1 }), -- Visual mode selection
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

    Comment({ fg = c_color_overlay1, gui = "italic" }), -- Any comment

    Constant({ fg = c_color_crimson }), -- (*) Any constant
    String({ fg = c_color_sage }), --   A string constant: "this is a string"
    Character({ fg = c_color_sage }), --   A character constant: 'c', '\n'
    Boolean({ fg = c_color_rose, gui = "bold" }), --   A boolean constant: TRUE, false
    Number({ fg = c_color_rust }), --   A number constant: 234, 0xff
    Float({ fg = c_color_rust }), --   A floating point constant: 2.3e10

    Identifier({ fg = c_color_text }), -- (*) Any variable name
    Function({ fg = c_color_cream }), --   Function name (also: methods for classes)

    Statement({ fg = c_color_cream }), -- (*) Any statement
    Conditional({ fg = c_color_cream }), --   if, then, else, endif, switch, etc.
    Repeat({ fg = c_color_cream }), --   for, do, while, etc.
    Label({ fg = c_color_cream }), --   case, default, etc.
    Operator({ fg = c_color_cream }), --   "sizeof", "+", "*", etc.
    Keyword({ fg = c_color_overlay2, bg = c_color_base }), -- Normal text
    Exception({}), --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type({ fg = c_color_subtext1 }), -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure({ fg = c_color_subtext1 }), --   struct, union, enum, etc.
    Typedef({ fg = c_color_subtext1 }), --   A typedef

    Special({ fg = c_color_seafoam }), -- (*) Any special symbol
    SpecialChar({ fg = c_color_seafoam }), --   Special character in a constant
    Tag({ fg = c_color_seafoam }), --   You can use CTRL-] on this
    Delimiter({ fg = c_color_seafoam }), --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error({}), -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            {  fg = c_color_red } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { fg = c_color_red} , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError({ fg = c_syntax_color_removed }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn({ fg = c_syntax_color_modified }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo({ fg = c_syntax_color_added }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint({ fg = c_syntax_color_renamed }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError({ sp = c_syntax_color_removed, gui = "underline" }), -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn({ sp = c_syntax_color_modified, gui = "underline" }), -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo({ sp = c_syntax_color_added, gui = "underline" }), -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint({ sp = c_syntax_color_renamed, gui = "underline" }), -- Used to underline "Hint" diagnostics.
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

    sym("@variable")({ fg = c_color_text }), -- various variable names
    sym("@variable.builtin")({ fg = c_color_text }), -- built-in variable names (e.g. this, self)
    sym("@variable.parameter")({ fg = c_color_drift }), -- parameters of a function
    sym("@variable.parameter.builtin")({ fg = c_color_subtext0 }), -- special parameters (e.g. _, it)
    sym("@variable.member")({ fg = c_color_tide }), -- object and struct fields

    sym("@constant")({ fg = c_color_crimson }), -- constant identifiers
    sym("@constant.builtin")({ fg = c_color_crimson }), -- built-in variable names (e.ge. this, self, unit)
    sym("@constant.macro")({ fg = c_color_crimson }), -- constants defined by the preprocessor

    sym("@module")({ fg = c_color_cream }), -- modules or namespaces
    sym("@module.builtin")({ fg = c_color_cream }), -- built-in modules or namespaces
    sym("@label")({ fg = c_color_sage }), -- GOTO and other labels

    sym("@string")({ fg = c_color_sage }), -- string literals
    sym("@string.documentation")({ fg = c_color_sage, gui = "italic" }), -- string documenting code (.g. Python docstrings)
    sym("@string.regexp")({ fg = c_color_rust }), -- regular expressions
    sym("@string.escape")({ fg = c_color_seafoam }), -- escape sequences
    sym("@string.special")({ fg = c_color_sage, gui = "bold" }), -- other special strings (e.g. dates)
    sym("@string.special.symbol")({ fg = c_uno_3 }), -- symbols or atoms
    sym("@string.special.path")({ fg = c_color_sage }), -- filenames
    sym("@string.special.url")({ fg = c_color_sage, gui = "underline" }), -- URIs

    sym("@character")({ fg = c_color_sage }), -- character literals
    sym("@character.special")({ fg = c_color_sage }), -- special characters (e.g. wildcards)

    sym("@boolean")({ fg = c_color_rose, gui = "bold" }), -- boolean literals
    sym("@number")({ fg = c_color_rust }), -- number literals
    sym("@float")({ fg = c_color_rust }), -- floating-point number literals

    sym("@type")({ fg = c_color_subtext1, gui = "bold" }), -- type or class definitions and annotations
    sym("@type.builtin")({ fg = c_color_subtext1, gui = "bold" }), -- built-in types
    sym("@type.definition")({ fg = c_color_subtext1 }), -- identifiers in type definitions (e.g. typedef <type> <identifier> in C)

    sym("@attribute")({ fg = c_color_rose }), -- attribute annotations (e.g. Python decorators, Rust lifetimes)
    sym("@attribute.builtin")({ fg = c_color_rose }), -- builtin annotations (e.ge @property in Python)
    sym("@property")({ fg = c_color_crimson }), -- the key in key/value pairs

    sym("@function")({ fg = c_color_cream, gui = "bold" }), -- function definitions
    sym("@function.builtin")({ fg = c_color_cream }), -- built-in functions
    sym("@function.call")({ fg = c_color_crimson }), -- function calls
    sym("@function.macro")({ fg = c_color_tide, gui = "italic" }), -- preprocessor macros

    sym("@function.method")({ fg = c_color_ember }), -- method definitions
    sym("@function.method.call")({ fg = c_color_ember }), -- method calls

    sym("@constructor")({ fg = c_color_tide }), -- constructor calls and definitions
    sym("@operator")({ fg = c_color_cream }), -- symbol operators (e.ge +, *)

    sym("@keyword")({ Keyword }), -- keywords not fitting into specific categories
    sym("@keyword.coroutine")({ Keyword }), -- keywords related to coroutines
    sym("@keyword.function")({ Keyword }), -- keywords that define a function
    sym("@keyword.operator")({ Keyword }), -- operators that are English words
    sym("@keyword.import")({ Keyword }), -- keywords for including modules
    sym("@keyword.type")({ Keyword }), -- keywords defining composite types
    sym("@keyword.modifier")({ Keyword }), -- keywords defining type modifiers (e.g. const, static, public)
    sym("@keyword.repeat")({ Keyword }), -- keywords related to loops
    sym("@keyword.return")({ Keyword }), -- keywords like return and yield
    sym("@keyword.debug")({ Keyword }), -- keywords related to debugging
    sym("@keyword.exception")({ Keyword }), -- keywords related to exceptions

    sym("@keyword.conditional")({ Keyword }), -- keywords related to conditionals
    sym("@keyword.conditional.ternary")({ Keyword }), -- ternaary operators

    sym("@keyword.directive")({ Keyword }), --
    sym("@keyword.directive.define")({ Keyword }), --

    sym("@punctuation")({ fg = c_color_cream }), -- delimiters (e.g. ;, ., ,)
    sym("@punctuation.bracket")({ fg = c_color_cream }), -- brackets and parentheses
    sym("@punctuation.special")({ fg = c_color_cream }), -- special symbols

    sym("@comment")({ Comment }), -- Comment
    sym("@comment.documentation")({ Comment }), -- Comment

    sym("@diff.plus")({ fg = c_syntax_color_added }), -- Delimiter
    sym("@diff.minus")({ fg = c_syntax_color_modified }), -- Delimiter
    sym("@diff.delta")({ fg = c_syntax_color_renamed }), -- Delimiter

    sym("@text.literal")({ fg = c_color_sage }), -- Comment
    -- sym"@text.reference"       { }, -- Identifier
    sym("@text.title")({ fg = c_color_blue, gui = "bold" }), -- Title
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

    sym("@exception")({ fg = c_color_rust }), -- Exception
    -- sym"@storageclass"         { }, -- StorageClass
    -- sym"@structure"            { }, -- Structure
    -- sym"@namespace"            { }, -- Identifier
    -- sym"@include"              { }, -- Include
    -- sym"@preproc"              { }, -- PreProc
    -- sym"@debug"                { }, -- Debug

    sym("@tag")({ fg = c_color_crimson }), -- Tag
    sym("@tag.builtin")({ fg = c_color_crimson }), -- Tag
    sym("@tag.attribute")({ fg = c_color_cream }), -- Tag
    sym("@tag.delimiter")({ fg = c_color_cream }), -- Tag
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
