
local set = vim.opt

--indentation and tabs
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.autoindent = true

-- Line numbers
set.relativenumber = true
set.number = true

vim.diagnostic.config({ virtual_text = true })
