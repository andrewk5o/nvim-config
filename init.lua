-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = "," -- Set leader key to comma

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.o.background = "dark"

vim.opt.tabstop = 4      -- A tab character displays as 4 spaces
vim.opt.shiftwidth = 4   -- Indent using 4 spaces
vim.opt.expandtab = true -- Convert tabs to spaces

vim.wo.relativenumber = true
vim.wo.number = true

require("config.lazy")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.cmd([[colorscheme catppuccin]])

