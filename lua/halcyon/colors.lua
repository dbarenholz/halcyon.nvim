local M = {}

--- The Halcyon Color Palette
M.halcyon = {}
local halcyon = M.halcyon

halcyon.base_blue_01           = "#171c28";  -- Workbench Background
halcyon.base_blue_02           = "#1d2433";  -- Editor Background
halcyon.base_blue_03           = "#2f3b54";  -- Highlight, widgets, panel
halcyon.base_blue_04           = "#6679a4";  -- Dividers, subtle UI elements
halcyon.base_blue_05           = "#8695b7";  -- Status bar text, buttons, etc.
halcyon.base_grey_dark         = "#a2aabc";  -- Variables, property names, tabs
halcyon.base_grey_light        = "#d7dce2";  -- Active text, anything that should be white

halcyon.base_grey_tab          = "#71777f";
halcyon.base_grey_token        = "#586582";
halcyon.base_grey_scroll       = "#3f495e";
halcyon.base_grey_scroll_hover = "#5c6782";

halcyon.accent                 = "#ffcc66";  -- Accent, list tree titles, badges, etc.

halcyon.palette_cyan           = "#5ccfe6";  -- UI: Modified highlights
halcyon.palette_lime           = "#bae67e";  -- UI: Addition highlights
halcyon.palette_orange         = "#ffae57";  -- Constants, operators
halcyon.palette_yellow         = "#ffd580";  -- Functions, classes, object literal keys
halcyon.palette_lilac          = "#c3a6ff";  -- Keywords, constants, template literals
halcyon.palette_salmon         = "#ef6b73";  -- Deletion highlights, errors, warnings
halcyon.palette_blue           = "#7099db";  -- Visual check with coolors.co for a match
halcyon.palette_pink           = "#f9cff2";  -- Visual check with coolors.co for a match

--- Text colors
M.text = {}
local text = M.text

text.normal    = halcyon.base_grey_light;
text.muted     = "#8695b7";
text.error     = halcyon.palette_salmon;
text.warning   = halcyon.palette_orange;
text.success   = halcyon.palette_lime;
text.accent    = halcyon.accent;
text.on_accent = halcyon.base_blue_03;


--- Background colors
M.background = {}
local bg = M.background

bg.editor    = halcyon.base_blue_02;
bg.workbench = halcyon.base_blue_01;

--- Code colors
M.code = {}
local code = M.code

code.func      = halcyon.palette_yellow;
code.comment   = text.muted;
code.important = text.error;
code.keyword   = halcyon.palette_lilac;
code.property  = text.muted;
code.operator  = halcyon.palette_orange;
code.punct     = halcyon.palette_lilac;
code.string    = halcyon.palette_lime;
code.tag       = halcyon.base_grey_dark;
code.variable  = halcyon.palette_cyan;


--- Syntax (see :help group-name)
M.syntax = {}
local syntax = M.syntax

syntax.Comment        = { fg = code.comment,          bg = "NONE"                                              }
syntax.Constant       = { fg = code.variable,         bg = "NONE"                                              }
syntax.String         = { fg = code.string,           bg = "NONE"                                              }
syntax.Character      = { fg = code.string,           bg = "NONE",                            italic = true    }
syntax.Number         = { fg = halcyon.palette_lilac, bg = "NONE"                                              }
syntax.Boolean        = { fg = code.variable,         bg = "NONE",                            bold = true      }
syntax.Float          = { fg = halcyon.palette_lilac, bg = "NONE",                            italic = true    }
syntax.Identifier     = { fg = code.variable,         bg = "NONE"                                              }
syntax.Function       = { fg = code.func,             bg = "NONE"                                              }
syntax.Statement      = { fg = code.operator,         bg = "NONE"                                              }
syntax.Conditional    = { fg = code.operator,         bg = "NONE"                                              }
syntax.Repeat         = { fg = code.operator,         bg = "NONE"                                              }
syntax.Label          = { fg = code.operator,         bg = "NONE"                                              }
syntax.Operator       = { fg = code.operator,         bg = "NONE"                                              }
syntax.Keyword        = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Exception      = { fg = code.operator,         bg = "NONE"                                              }
syntax.PreProc        = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Include        = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Define         = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Macro          = { fg = code.keyword,          bg = "NONE"                                              }
syntax.PreCondit      = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Type           = { fg = code.keyword,          bg = "NONE"                                              }
syntax.StorageClass   = { fg = code.keyword,          bg = "NONE",                            italic = true    }
syntax.Structure      = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Typedef        = { fg = code.keyword,          bg = "NONE"                                              }
syntax.Special        = { fg = code.operator,         bg = "NONE",                            italic = true    }
syntax.SpecialChar    = { fg = code.operator,         bg = "NONE"                                              }
syntax.Tag            = { fg = code.operator,         bg = "NONE"                                              }
syntax.Delimiter      = { fg = code.comment,          bg = "NONE"                                              }
syntax.SpecialComment = { fg = code.comment,          bg = "NONE"                                              }
syntax.Debug          = { fg = code.error,            bg = "NONE"                                              }
syntax.Underlined     = { fg = "NONE",                bg = "NONE", sp = halcyon.palette_cyan, undercurl = true }
syntax.Ignore         = { fg = text.muted,            bg = "NONE"                                              }
syntax.Error          = { fg = "NONE",                bg = "NONE", sp = code.error,           underline = true }
syntax.Todo           = { fg = halcyon.palette_pink,  bg = "NONE",                            bold = true      }

--- Builtin (see :help highlight-default)
-- TEST: float window
-- :lua vim.api.nvim_open_win(0, true, { relative='win', width=120, height=15, border="single", win = 1001, row = 20, col = 20, zindex=zindex })
M.builtin = {}
local builtin = M.builtin

builtin.ColorColumn  = { fg = "NONE",            bg = bg.workbench }
builtin.Conceal      = { fg = syntax.Comment.fg, bg = "NONE"               }
builtin.CurSearch    = { fg = text.accent,       bg = bg.workbench, bold = true }
builtin.Cursor       = { fg = text.on_accent,    bg = text.accent }
-- builtin.lCursor  = {}
-- builtin.CursorIM = {}
builtin.CursorColumn = { fg = "NONE",            bg = bg.workbench }
builtin.CursorLine   = { fg = "NONE",            bg = bg.workbench }
-- builtin.Directory = {} -- unsure what to make of this yet
builtin.DiffAdd      = { fg = "NONE", bg = text.success, bold = true } -- fg or bg?
builtin.DiffChange   = { fg = "NONE", bg = text.warning, bold = true } -- fg or bg?
builtin.DiffDelete   = { fg = "NONE", bg = text.error,   bold = true } -- fg or bg?
builtin.DiffText     = { fg = "NONE", bg = text.warning, bold = true } -- unsure about this one
-- builtin.EndOfBuffer  = {}
-- builtin.TermCursor   = {}
-- builtin.TermCursorNC = {}
builtin.ErrorMsg     = { fg = text.error,   bg = "NONE" }
builtin.WinSeparator = { fg = bg.workbench, bg = "NONE" }
--builtin.Folded       = { fg=pal.white, bg="#49483E" }
--builtin.FoldColumn   = { fg=pal.gray2, bg=pal.black2 }
--builtin.SignColumn   = { fg=pal.bright_green, bg=pal.black2 }
--builtin.IncSearch    = { link="CurSearch" }
--builtin.Substitute   = { link="Search" }
--builtin.LineNr       = { fg=pal.gray2, bg=pal.black2 }
--builtin.LineNrAbove  = { link="LineNr" }
--builtin.LineNrBelow  = { link="LineNr" }
--builtin.CursorLineNr = { fg=pal.white, bg=pal.black2 }
--builtin.CursorLineFold = { link="FoldColumn" }
--builtin.CursorLineSign = { link="SignColumn" }
--builtin.MatchParen   = { fg=pal.black, bg=pal.yellow, bold=true }
--builtin.ModeMsg      = { fg=pal.bright_yellow }
--builtin.MsgArea      = { fg=pal.bright_white, bg=pal.black }
--builtin.NonText      = { fg=pal.gray2, bg="NONE" }
--builtin.Normal       = { fg=pal.bright_white, bg=pal.black }
--builtin.NormalFloat  = { fg="NONE", bg=pal.black3 }
--builtin.FloatBorder  = { fg=pal.gray, bg=pal.black3 }
--builtin.FloatTitle   = { fg=pal.yellow, bg=pal.black3 }
--builtin.NormalNC     = { link="Normal" }
--builtin.Pmenu        = { fg=pal.bright_cyan, bg=pal.black3 }
--builtin.PmenuSel     = { fg=pal.black, bg=pal.bright_black, bold=true }
--builtin.PmenuKind    = { link="Pmenu" }
--builtin.PmenuKindSel = { link="PmenuSel" }
--builtin.PmenuExtra   = { link="Pmenu" }
--builtin.PmenuExtraSel = { link="PmenuSel" }
--builtin.PmenuSbar    = { fg="NONE", bg=pal.bright_black }
--builtin.PmenuThumb   = { fg="NONE", bg=pal.white }
--builtin.Question     = { fg=pal.bright_cyan, bg="NONE" }
--builtin.QuickFixLine = { link="Search" }
--builtin.Search       = { fg=pal.black, bg=pal.bright_yellow }
--builtin.SpecialKey   = { fg=pal.gray2, bg="NONE" }
--builtin.SpellBad     = { fg="NONE", bg="NONE", sp=pal.red, undercurl=true }
--builtin.SpellCap     = { fg="NONE", bg="NONE", sp=pal.bright_blue, undercurl=true }
--builtin.SpellLocal   = { fg="NONE", bg="NONE", sp=pal.bright_cyan, undercurl=true }
--builtin.SpellRare    = { fg="NONE", bg="NONE", sp=pal.bright_white, undercurl=true }
--builtin.StatusLine   = { fg=pal.bright_white, bg=pal.black3 }
--builtin.StatusLineNC = { fg=pal.bright_black, bg="#080808" }
--builtin.TabLine      = { fg=pal.bright_white, bg=pal.black }
--builtin.TabLineFill  = { fg=pal.black, bg=pal.black }
--builtin.TabLineSel   = { fg=pal.black, bg=pal.white }
--builtin.Title        = { fg=pal.yellow, bg="NONE" }
--builtin.Visual       = { fg="NONE", bg="#403D3D" }
--builtin.VisualNOS    = { fg="NONE", bg="#403D3D" }
--builtin.WarningMsg   = { fg=pal.bright_white, bg=pal.black3 }
--builtin.Whitespace   = { link="NonText" }
--builtin.WildMenu     = { link="Pmenu" }
--builtin.WinBar       = { link="StatusLine" }
--builtin.WinBarNC     = { link="StatusLineNC" }

--- Diagnostic & LSP
M.diagnostic = {}
local diag = M.diagnostic

--diag.DiagnosticError = { fg=pal.bright_red, bg="NONE" }
--diag.DiagnosticWarn  = { fg=pal.bright_yellow, bg="NONE" }
--diag.DiagnosticInfo  = { fg=pal.white, bg="NONE" }
--diag.DiagnosticHint  = { fg=pal.white, bg="NONE" }
--diag.DiagnosticOk    = { fg=pal.bright_green, bg="NONE" }

--diag.DiagnosticUnderlineError = { fg="NONE", bg="NONE", sp=pal.red, underline=true }
--diag.DiagnosticUnderlineWarn  = { fg="NONE", bg="NONE", sp=pal.bright_yellow, underline=true }
--diag.DiagnosticUnderlineInfo  = { fg="NONE", bg="NONE", sp=pal.bright_black, underline=true }
--diag.DiagnosticUnderlineHint  = { fg="NONE", bg="NONE", sp=pal.bright_black, underline=true }
--diag.DiagnosticUnderlineOk    = { fg="NONE", bg="NONE", sp=pal.bright_green, underline=true }

--diag.DiagnosticVirtualTextError = { fg=pal.red, bg="NONE" }
--diag.DiagnosticVirtualTextWarn  = { link="DiagnosticWarn" }
--diag.DiagnosticVirtualTextInfo  = { link="DiagnosticInfo" }
--diag.DiagnosticVirtualTextHint  = { link="DiagnosticHint" }
--diag.DiagnosticVirtualTextOk    = { link="DiagnosticOk" }

--diag.DiagnosticFloatingError = { fg=pal.red, bg="NONE" }
--diag.DiagnosticFloatingWarn  = { link="DiagnosticWarn" }
--diag.DiagnosticFloatingInfo  = { link="DiagnosticInfo" }
--diag.DiagnosticFloatingHint  = { link="DiagnosticHint" }
--diag.DiagnosticFloatingOk    = { link="DiagnosticOk" }

--diag.DiagnosticDeprecated  = { fg="NONE", bg="NONE", sp="NONE", strikethrough=true }
--diag.DiagnosticUnnecessary = { link="Comment" }

-- See `:h lsp-highlight`
--diag.LspReferenceText  = { fg="NONE", bg=pal.black3 }
--diag.LspReferenceRead  = { fg="NONE", bg=pal.black3 }
--diag.LspReferenceWrite = { fg="NONE", bg=pal.black3 }

--- Plugin: TreeSitter
M.treesitter = {}
local ts = M.treesitter

ts["@text"]                   = { fg="NONE", bg="NONE" }
ts["@text.literal"]           = { link ="Comment" }
ts["@text.reference"]         = { link ="Identifier" }
ts["@text.title"]             = { link ="Title" }
ts["@text.uri"]               = { link ="Underlined" }
ts["@text.underline"]         = { link ="Underlined" }
ts["@text.todo"]              = { link ="Todo" }
ts["@comment"]                = { link = "Comment" }
ts["@punctuation"]            = { link = "Delimiter" }
ts["@constant"]               = { link = "Constant" }
ts["@constant.builtin"]       = { link = "Special" }
ts["@constant.macro"]         = { link = "Define" }
ts["@define"]                 = { link = "Define" }
ts["@macro"]                  = { link = "Macro" }
ts["@string"]                 = { link = "String" }
ts["@string.escape"]          = { link = "SpecialChar" }
ts["@string.special"]         = { link = "SpecialChar" }
ts["@character"]              = { link = "Character" }
ts["@character.special"]      = { link = "SpecialChar" }
ts["@number"]                 = { link = "Number" }
ts["@boolean"]                = { link = "Boolean" }
ts["@float"]                  = { link = "Float" }
ts["@function"]               = { link = "Function" }
ts["@function.builtin"]       = { link = "Special" }
ts["@function.macro"]         = { link = "Macro" }
ts["@parameter"]              = { link = "Identifier" }
ts["@method"]                 = { link = "Function" }
ts["@field"]                  = { link = "Identifier" }
ts["@property"]               = { link = "Identifier" }
ts["@constructor"]            = { link = "Special" }
ts["@repeat"]                 = { link = "Repeat" }
ts["@label"]                  = { link = "Label" }
ts["@operator"]               = { link = "Operator" }
ts["@keyword"]                = { link = "Keyword" }
ts["@exception"]              = { link = "Exception" }
ts["@variable"]               = { link = "Identifier" }
ts["@type"]                   = { link = "Type" }
ts["@type.definition"]        = { link = "Typedef" }
ts["@storageclass"]           = { link = "StorageClass" }
ts["@namespace"]              = { link = "Identifier" }
ts["@include"]                = { link = "Include" }
ts["@preproc"]                = { link = "PreProc" }
ts["@debug"]                  = { link = "Debug" }
ts["@tag"]                    = { link = "Tag" }
ts["@lsp.type.class"]         = { link = "Structure" }
ts["@lsp.type.comment"]       = { link = "Comment" }
ts["@lsp.type.decorator"]     = { link = "Function" }
ts["@lsp.type.enum"]          = { link = "Structure" }
ts["@lsp.type.enumMember"]    = { link = "Constant" }
ts["@lsp.type.function"]      = { link = "Function" }
ts["@lsp.type.interface"]     = { link = "Structure" }
ts["@lsp.type.macro"]         = { link = "Macro" }
ts["@lsp.type.method"]        = { link = "Function" }
ts["@lsp.type.namespace"]     = { link = "Structure" }
ts["@lsp.type.parameter"]     = { link = "Identifier" }
ts["@lsp.type.property"]      = { link = "Identifier" }
ts["@lsp.type.struct"]        = { link = "Structure" }
ts["@lsp.type.type"]          = { link = "Type" }
ts["@lsp.type.typeParameter"] = { link = "Typedef" }
ts["@lsp.type.variable"]      = { link = "Identifier" }

-- Non-default
--ts["@text"]          = { fg=pal.bright_white, bg="NONE" }
ts["@text.emphasis"] = { fg=ts["@text"].fg, bg=ts["@text"].bg, italic=true }
ts["@text.strong"]   = { fg=ts["@text"].fg, bg=ts["@text"].bg, bold=true }

ts["@text.emphasis.markdown_inline"] = { link="@text.emphasis" }
ts["@text.strong.markdown_inline"]   = { link="@text.strong" }
ts["@text.todo.unchecked.markdown"]  = { fg=syntax.Comment.fg , bg="NONE", bold=true }
-- ts["@text.todo.checked.markdown"]    = { fg=pal.bright_green , bg="NONE", bold=true }

--ts["@text.title.1"]        = { fg=pal.yellow,        bg="NONE" }
--ts["@text.title.1.marker"] = { fg=pal.yellow,        bg="NONE" }
--ts["@text.title.2"]        = { fg=pal.bright_cyan,   bg="NONE" }
--ts["@text.title.2.marker"] = { fg=pal.bright_cyan,   bg="NONE" }
--ts["@text.title.3"]        = { fg=pal.bright_green,  bg="NONE" }
--ts["@text.title.3.marker"] = { fg=pal.bright_green,  bg="NONE" }
--ts["@text.title.4"]        = { fg=pal.bright_red,    bg="NONE" }
--ts["@text.title.4.marker"] = { fg=pal.bright_red,    bg="NONE" }
--ts["@text.title.5"]        = { fg=pal.bright_violet, bg="NONE" }
--ts["@text.title.5.marker"] = { fg=pal.bright_violet, bg="NONE" }
--ts["@text.title.6"]        = { fg=pal.bright_blue,   bg="NONE" }
--ts["@text.title.6.marker"] = { fg=pal.bright_blue,   bg="NONE" }

--ts["@text.emphasis"] = { fg=pal.yellow, bg=ts["@text"].bg, italic=true }
--ts["@text.strong"]   = { fg=pal.yellow, bg=ts["@text"].bg, bold=true }

ts["@symbol"]         = { link="Constant" }
ts["@type.builtin"]   = { fg=syntax.Type.fg, bg=syntax.Type.bg, italic=true }
ts["@type.qualifier"] = { link = "Keyword" }

return M
