local status, telescope = pcall(require, "telescope")
if not status then
  return
end

local actions = require "telescope.actions"

-- Telescope options
telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = "  ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<A-q>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<A-j>"] = actions.preview_scrolling_down,
        ["<A-k>"] = actions.preview_scrolling_up,
      },
    },
  },
}

telescope.load_extension("fzf")

