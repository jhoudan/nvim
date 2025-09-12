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
--  :Lushify

local lush = require("lush")
local hsl = lush.hsl

local c_uno1 = hsl("#ffb5a7")
local c_uno2 = hsl("#fbfbfb")
local c_uno3 = hsl("#d6e9ff")
local c_uno4 = hsl("#55606d")

local c_duo1 = hsl("#ffd7ba")
local c_duo2 = hsl("#ee6055")
local c_duo3 = hsl("#d06178")

local c_renamed = hsl("#61afef")
local c_added = hsl("#98c379")
local c_modified = hsl("#e5c07b")
local c_removed = hsl("#e05252")

local c_bg = hsl("#000814")
local c_fg = c_uno2
local c_accent = hsl("#a3bcf9")
local c_gutter = hsl("#636d83")
local c_selection = hsl("#3e4452")
local c_fold_bg = hsl("#5c6370")
local c_cursor_line = hsl("#2c323c")

-- LSP/Linters sometimes show `undefined global` in Lush specs
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Core editor UI
    Normal({ fg = c_fg, bg = c_bg }),
    NormalFloat({ fg = c_fg, bg = c_selection }),
    Cursor({ fg = c_bg, bg = c_uno1 }),
    CursorLine({ bg = c_cursor_line }),
    CursorColumn({ bg = c_cursor_line }),
    ColorColumn({ bg = c_cursor_line }),
    SignColumn({ bg = c_bg, fg = c_gutter }),
    LineNr({ fg = c_gutter, bg = c_bg }),
    LineNrAbove({ fg = c_gutter, bg = c_bg }),
    LineNrBelow({ fg = c_gutter, bg = c_bg }),
    CursorLineNr({ fg = c_uno1, bg = c_cursor_line, gui = "bold" }),
    EndOfBuffer({ fg = c_bg.da(10) }),
    NonText({ fg = c_bg.da(10) }),
    FoldColumn({ fg = c_fold_bg, bg = c_bg }),
    Folded({ fg = c_uno3, bg = c_fold_bg }),
    WinSeparator({ fg = c_bg.da(8), bg = c_bg }),

    StatusLine({ fg = c_fg, bg = c_selection }),
    StatusLineNC({ fg = c_uno4, bg = c_bg }),
    VertSplit({ fg = c_bg.da(8), bg = c_bg }),

    Pmenu({ fg = c_fg, bg = c_selection }),
    PmenuSel({ fg = c_bg, bg = c_uno3 }),
    PmenuSbar({ bg = c_cursor_line }),
    PmenuThumb({ bg = c_uno4 }),

    Search({ fg = c_bg, bg = c_uno3 }),
    IncSearch({ fg = c_bg, bg = c_duo3 }),
    CurSearch({ fg = c_bg, bg = c_uno3 }),
    Visual({ bg = c_selection }),
    MatchParen({ fg = c_accent, bg = c_bg, gui = "bold" }),

    Directory({ fg = c_uno3 }),
    Title({ fg = c_uno1 }),
    Boolean({ fg = c_duo3, gui = "bold" }),
    ErrorMsg({ fg = c_removed }),
    WarningMsg({ fg = c_duo3 }),
    Question({ fg = c_uno1 }),

    -- Syntax mapping (screenshot look)
    Comment({ fg = c_uno4, gui = "italic" }),
    Constant({ fg = c_uno1 }),
    String({ fg = c_duo1 }),
    Character({ fg = c_duo1 }),
    Number({ fg = c_duo3 }),
    Float({ fg = c_duo3 }),

    Identifier({ fg = c_uno1 }),
    Function({ fg = c_accent }),

    Statement({ fg = c_fg }),
    Operator({ fg = c_fg }),
    Keyword({ fg = c_duo2 }),
    Conditional({ fg = c_duo2 }),
    Repeat({ fg = c_duo2 }),
    Label({ fg = c_duo2 }),
    Exception({ fg = c_duo2 }),

    PreProc({ fg = c_uno1 }),
    Include({ fg = c_uno1 }),
    Define({ fg = c_uno1 }),

    Type({ fg = c_uno3 }),
    Structure({ fg = c_uno3 }),
    Typedef({ fg = c_uno3 }),

    Special({ fg = c_fg }),
    SpecialChar({ fg = c_duo3 }),
    Tag({ fg = c_duo2 }),
    Delimiter({ fg = c_uno2 }),

    -- Diagnostics / LSP
    DiagnosticError({ fg = c_removed }),
    DiagnosticWarn({ fg = c_duo3 }),
    DiagnosticInfo({ fg = c_renamed }),
    DiagnosticHint({ fg = c_uno4 }),
    DiagnosticUnderlineError({ sp = c_removed, gui = "underline" }),
    DiagnosticUnderlineWarn({ sp = c_duo3, gui = "underline" }),
    DiagnosticUnderlineInfo({ sp = c_renamed, gui = "underline" }),
    DiagnosticUnderlineHint({ sp = c_uno4, gui = "underline" }),

    -- Diff
    DiffAdd({ fg = c_added }),
    DiffChange({ fg = c_modified }),
    DiffDelete({ fg = c_removed }),
    DiffText({ fg = c_renamed }),

    -- Treesitter selections
    sym("@comment")({ Comment }),
    sym("@string")({ String }),
    sym("@string.escape")({ fg = c_duo3 }),
    sym("@character")({ Character }),
    sym("@number")({ Number }),
    sym("@boolean")({ Number }),
    sym("@float")({ Float }),
    sym("@constant")({ Constant }),
    sym("@constant.builtin")({ Constant }),
    sym("@variable")({ fg = c_fg }),
    sym("@variable.builtin")({ fg = c_fg }),
    sym("@function")({ Function }),
    sym("@function.builtin")({ Function }),
    sym("@method")({ Function }),
    sym("@constructor")({ Function }),
    sym("@type")({ Type }),
    sym("@type.builtin")({ Type }),
    sym("@property")({ fg = c_fg }),
    sym("@parameter")({ fg = c_fg }),
    sym("@field")({ fg = c_fg }),
    sym("@attribute")({ fg = c_duo2 }),
    sym("@operator")({ Operator }),
    sym("@keyword")({ Keyword }),
    sym("@keyword.function")({ Keyword }),
    sym("@keyword.return")({ Keyword }),
    sym("@keyword.operator")({ Keyword }),
    sym("@punctuation")({ fg = c_uno2 }),
    sym("@punctuation.bracket")({ fg = c_accent }),
    sym("@punctuation.delimiter")({ fg = c_uno2 }),
    sym("@tag")({ fg = c_duo2 }),
    sym("@tag.attribute")({ fg = c_duo1 }),
    sym("@tag.delimiter")({ fg = c_uno3 }),
  }
end)

return theme

-- vi:nowrap
