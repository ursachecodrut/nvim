-- Load Alpha with a protected call
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end


-- Enable Alpha dashboard
local dashboard = require("alpha.themes.dashboard")

-- Disable the statusline to make the dashboard look clean
vim.cmd [[ au User AlphaReady if winnr('$') == 1 | set laststatus=1 ]]

-- Custom Footer
dashboard.section.footer.val = {
    'The best error message is the one that never shows up.'
}

-- Custom Section
dashboard.section.buttons.val = {
	  dashboard.button("n", "  Create New file",       ":set laststatus=3 | :ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  Open Recent Files",     ":set laststatus=3 | :Telescope oldfiles <CR>"),
    dashboard.button("v", "  Neovim Settings",       ":set laststatus=3 | e ~/.config/nvim/init.lua <CR>"),
	  dashboard.button("u", "  Update Nvim Plugins",   ":PackerSync <CR>"),
	  dashboard.button("q", "  Quit Neovim",           ":qa<CR>"),
}

-- Luavim Ascii Art
dashboard.section.header.val = {
    [[██╗     ██╗   ██╗  █████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
    [[██║     ██║   ██║ ██╔══██╗ ██║   ██║ ██║ ████╗ ████║]],
    [[██║     ██║   ██║ ███████║ ██║   ██║ ██║ ██╔████╔██║]],
    [[██║     ██║   ██║ ██╔══██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
    [[███████╗╚██████╔╝ ██║  ██║  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
    [[╚══════╝ ╚═════╝  ╚═╝  ╚═╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

-- Layout for luavim ascii art
dashboard.config.layout = {
    { type = "padding", val = 6 },
    dashboard.section.header,
    { type = "padding", val = 2 },
    dashboard.section.buttons,
    { type = "padding", val = 1 },
    dashboard.section.footer,
}

alpha.setup(dashboard.opts)
