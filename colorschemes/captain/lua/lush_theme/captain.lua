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

local c_bg = hsl("#001219").da(12).de(10) -- darker and less blueish
local c_bg_dim = c_bg.da(8) -- deepest gutter/split
local c_bg_alt = c_bg.li(6) -- subtle surface highlight

-- Base and accents
local c_offwhite = hsl("#f1faee") -- off‑white (primary text)
local c_red = hsl("#e63946") -- red (warnings/keywords)
local c_aqua = hsl("#a8dadc") -- aqua (strings/ids)
local c_sky = hsl("#98C1D9") -- sky blue (numbers/constants)
local c_steel = hsl("#457b9d") -- steel blue (types/structure)
local c_dark_red = hsl("#9B2226") -- dark red (errors)
local c_rust = hsl("#AE2012") -- rust red (tags/deletes)

-- UI neutrals
local c_ui_grey = c_bg.li(28) -- line numbers, nontext
local c_slate = hsl("#8d99ae") -- slate grey (comments)

-- LSP/Linters mistakenly show `undefined global` errors in the spec
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Core editor UI
    Normal({ fg = c_offwhite, bg = c_bg }),
    NormalFloat({ fg = c_offwhite, bg = c_bg_alt }),
    Cursor({ fg = c_bg, bg = c_offwhite }),
    CursorLine({ bg = c_bg_alt }),
    CursorColumn({ bg = c_bg_alt }),
    ColorColumn({ bg = c_bg_dim }),
    SignColumn({ bg = c_bg }),
    LineNr({ fg = c_ui_grey, bg = c_bg }),
    LineNrAbove({ fg = c_ui_grey, bg = c_bg }),
    LineNrBelow({ fg = c_ui_grey, bg = c_bg }),
    CursorLineNr({ fg = c_aqua, bg = c_bg_alt, gui = "bold" }),
    EndOfBuffer({ fg = c_bg_dim }),
    NonText({ fg = c_bg_dim }),
    FoldColumn({ fg = c_ui_grey, bg = c_bg }),
    Folded({ fg = c_ui_grey, bg = c_bg_alt }),
    WinSeparator({ fg = c_bg_dim, bg = c_bg }),

    StatusLine({ fg = c_offwhite, bg = c_bg_alt }),
    StatusLineNC({ fg = c_ui_grey, bg = c_bg }),
    VertSplit({ fg = c_bg_dim, bg = c_bg }),

    Pmenu({ fg = c_offwhite, bg = c_bg_alt }),
    PmenuSel({ fg = c_bg, bg = c_aqua }),
    PmenuSbar({ bg = c_bg_dim }),
    PmenuThumb({ bg = c_slate }),

    Search({ fg = c_bg, bg = c_aqua }),
    IncSearch({ fg = c_bg, bg = c_red }),
    CurSearch({ fg = c_bg, bg = c_aqua }),
    Visual({ bg = c_bg.li(6) }),
    MatchParen({ fg = c_sky, bg = c_bg, gui = "bold" }),

    Directory({ fg = c_aqua }),
    Title({ fg = c_aqua }),
    Boolean({ fg = c_sky, gui = "bold" }),
    ErrorMsg({ fg = c_dark_red }),
    WarningMsg({ fg = c_red }),
    Question({ fg = c_aqua }),

    -- Syntax (use more of the palette)
    Comment({ fg = c_slate, gui = "italic" }),
    Constant({ fg = c_sky }),
    String({ fg = c_aqua }),
    Character({ fg = c_aqua }),
    Number({ fg = c_sky }),
    Float({ fg = c_sky }),

    Identifier({ fg = c_offwhite }),
    Function({ fg = c_aqua.li(5) }),

    Statement({ fg = c_offwhite }),
    Operator({ fg = c_offwhite }),
    Keyword({ fg = c_red }),
    Conditional({ fg = c_red }),
    Repeat({ fg = c_red }),
    Label({ fg = c_red }),
    Exception({ fg = c_red }),

    PreProc({ fg = c_offwhite }),
    Include({ fg = c_offwhite }),
    Define({ fg = c_offwhite }),

    Type({ fg = c_steel }),
    Structure({ fg = c_steel }),
    Typedef({ fg = c_steel }),

    Special({ fg = c_offwhite }),
    SpecialChar({ fg = c_red }),
    Tag({ fg = c_rust }),
    Delimiter({ fg = c_offwhite.da(10) }),

    -- Diagnostics / LSP
    DiagnosticError({ fg = c_dark_red }),
    DiagnosticWarn({ fg = c_red }),
    DiagnosticInfo({ fg = c_sky }),
    DiagnosticHint({ fg = c_ui_grey }),
    DiagnosticUnderlineError({ sp = c_dark_red, gui = "underline" }),
    DiagnosticUnderlineWarn({ sp = c_red, gui = "underline" }),
    DiagnosticUnderlineInfo({ sp = c_aqua, gui = "underline" }),
    DiagnosticUnderlineHint({ sp = c_ui_grey, gui = "underline" }),

    -- Diff (mapped to your palette)
    DiffAdd({ fg = c_aqua }),
    DiffChange({ fg = c_red }),
    DiffDelete({ fg = c_dark_red }),
    DiffText({ fg = c_aqua }),

    -- Treesitter (minimal selection; keep accents light)
    sym("@comment")({ Comment }),
    sym("@string")({ String }),
    sym("@string.escape")({ fg = c_red }),
    sym("@character")({ Character }),
    sym("@number")({ Number }),
    sym("@boolean")({ Number }),
    sym("@float")({ Float }),
    sym("@constant")({ Constant }),
    sym("@constant.builtin")({ Constant }),
    sym("@variable")({ fg = c_offwhite }),
    sym("@variable.builtin")({ fg = c_offwhite }),
    sym("@function")({ Function }),
    sym("@function.builtin")({ Function }),
    sym("@method")({ Function }),
    sym("@constructor")({ Function }),
    sym("@type")({ Type }),
    sym("@type.builtin")({ Type }),
    sym("@property")({ fg = c_offwhite }),
    sym("@parameter")({ fg = c_offwhite }),
    sym("@field")({ fg = c_offwhite }),
    sym("@attribute")({ fg = c_red }),
    sym("@operator")({ Operator }),
    sym("@keyword")({ Keyword }),
    sym("@keyword.function")({ Keyword }),
    sym("@keyword.return")({ Keyword }),
    sym("@keyword.operator")({ Keyword }),
    sym("@punctuation")({ fg = c_offwhite }),
    sym("@punctuation.bracket")({ fg = c_offwhite }),
    sym("@punctuation.delimiter")({ fg = c_offwhite.da(10) }),
    sym("@tag")({ fg = c_rust }),
    sym("@tag.attribute")({ fg = c_aqua }),
    sym("@tag.delimiter")({ fg = c_offwhite.da(10) }),
  }
end)

return theme

-- vi:nowrap
