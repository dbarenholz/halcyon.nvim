local utils  = require("halcyon.utils")
local colors = require("halcyon.colors")

local M = {}

--- Load the theme.
function M.load()
    vim.o.termguicolors = true
    vim.g.colors_name   = "halcyon"
    vim.o.background    = "dark"

    utils.apply_syntax(colors.syntax)
    utils.apply_syntax(colors.builtin)
    utils.apply_syntax(colors.diagnostic)
end

return M
