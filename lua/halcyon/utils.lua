-- Add a shorthand for highlighting.
local hl = vim.api.nvim_set_hl

local M = {}

--- Apply syntax for a particular table
--- @param table table the table containing all information for highlighting
function M.apply_syntax(table)
    for group, style in pairs(table) do
        local hl_group = {}

        local style_props = {
            "fg",
            "bg",
            "sp",
            "blend",
            "bold",
            "standout",
            "underline",
            "undercurl",
            "underdouble",
            "underdotted",
            "underdashed",
            "strikethrough",
            "italic",
            "reverse",
            "nocombine",
            "link"
        }

        for _, prop in ipairs(style_props) do
            if style[prop] then
                hl_group[prop] = style[prop]
            end
        end

        hl(0, group, hl_group)
    end
end

return M
