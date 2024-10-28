-- setting leader as space
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- turn hybrid lines on
vim.opt.number = true
vim.opt.relativenumber = true

-- config cursos
vim.opt.cursorcolumn = true
vim.opt.cursorline = true

-- saving files
vim.opt.autowrite = true

-- tabulation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Navigation between planes
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')

-- Navigation between tavs
vim.keymap.set('n', '<A-H>', 'gT')
vim.keymap.set('n', '<A-L>', 'gt')


