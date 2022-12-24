local status, lualine = pcall(require, "lualine")
if not status then
  print("Error while importing lualine")
  return
end

local lualine_onedark = require("lualine.themes.onedark")

lualine.setup({
  options = {
    theme = lualine_onedark
  }
})
