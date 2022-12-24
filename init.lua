local modules = {
  "codrut/core/options",
  "codrut/core/packer",
  "codrut/core/colorscheme",
  "codrut/core/keymaps",

  "codrut/plugins/comment",
  "codrut/plugins/nvim-tree",
}


for _, module in ipairs(modules) do
	local ok, _ = pcall(require, module)
	if not ok then
    print("Something wrong in " .. module)
    return
	end
end
