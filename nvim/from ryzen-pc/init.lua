if vim.g.vscode then
  Cmdheight = 1 -- this is the new line I added
  return
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- // VIM COMMENTS //
-- vim.opt.relativenumber = true
vim.o.statuscolumn = "%!v:lua.require'snacks.statuscolumn'.get()"

-- // LOCAL COMMENTS //
local opt = vim.opt
opt.wrap = true

-- // TRANSPARENT BACKGROUND //
vim.cmd("colorscheme americano")
function Transparent(color)
  color = color or "americano"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
Transparent()
