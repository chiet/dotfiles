if vim.g.vscode then
  cmdheight = 1
  return
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").compilers = { "zig" }
require("nvim-treesitter.install").prefer_git = false
require("mini.hipatterns").setup()

-- // TRANSPARENT BACKGROUND //
vim.cmd("colorscheme americano")
function Transparent(color)
  color = color or "americano"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
Transparent()
