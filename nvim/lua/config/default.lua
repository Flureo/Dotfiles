vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "tm", vim.cmd.tabnew)
vim.keymap.set("n", "td", vim.cmd.tabclose)
vim.keymap.set("n", "tp", vim.cmd.tabprevious)
vim.keymap.set("n", "tn", vim.cmd.tabnext)
vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm)
vim.keymap.set("t", "<C-c>", vim.cmd.q)

-- Tab Spacing
vim.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4

-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.scrolloff = 8

vim.opt.wrap = false
