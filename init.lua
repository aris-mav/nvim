-- Get the lazy plugins
require("config.keybinds")
require("config.lazy")

-- Set colors
-- vim.cmd[[colorscheme desert]]
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Remove border between vertical windows
-- vim.cmd[[:hi VertSplit ctermfg=bg ctermbg=bg guifg=bg guibg=bg]]
vim.cmd[[set fillchars+=vert:\ ]]

-- Indentations
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Slime thing (if plugin is not available)
-- vim.api.nvim_set_keymap('v', '<cr>', 'y<C-w>wpi<cr><C-\\><C-N><C-w>w', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<cr>', 'Y<C-w>wpi<cr><C-\\><C-N><C-w>w', { noremap = true, silent = true })
