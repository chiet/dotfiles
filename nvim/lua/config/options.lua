-- // VIM COMMENTS //
-- vim.opt.relativenumber = true
vim.o.statuscolumn = "%!v:lua.require'snacks.statuscolumn'.get()"

-- // ENABLE AUTOWRAP //
local opt = vim.opt
opt.wrap = true
