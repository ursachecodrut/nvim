local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
  return
end

local actions = require "telescope.actions"

telesope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = "  ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previos,
      },
    },
  }
})

telescope.lead_extension("fzf")
