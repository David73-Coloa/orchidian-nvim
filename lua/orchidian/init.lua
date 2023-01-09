--local colors = require("orchidian.utils").getColors()
local groups = require('orchidian.groups') 
local function setGroup() 
end

local function setHighlightGroups() 
  for group, color in pairs(groups) do 
      vim.api.nvim_set_hl(0, group, color)
   end
  --vim.api.nvim_set_hl(0, "Normal",  { fg = colors.fg, bg = colors.bg, })
  --vim.api.nvim_set_hl(0,"Comment", { fg = colors.comment, })
  --vim.api.nvim_set_hl(0,"Statement", { fg = colors.red })
  --vim.api.nvim_set_hl(0,"Function", { fg = colors.purple })
  --vim.api.nvim_set_hl(0,"Identifier", { fg = colors.purple })




end


local function load()
   vim.o.background = "dark"
  vim.o.termguicolors = true 
  vim.g.colors_name = "orchidian"
  setHighlightGroups()
  vim.g.terminal_color_background = "#000"
    --apply_term_colors(colorsApply)
end 

return {
  load = load
}
