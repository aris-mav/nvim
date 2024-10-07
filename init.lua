-- Get the lazy plugins
require("config.lazy")

-- Set colors
vim.cmd[[colorscheme desert]]

-- Remove border between vertical windows
vim.cmd[[:hi VertSplit ctermfg=bg ctermbg=bg guifg=bg guibg=bg]]
vim.cmd[[set fillchars+=vert:\ ]]

-- Indentations
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting


-- Keybinds --

-- Open terminal window with leader t
vim.keymap.set("n", "<leader>t", ":vert term <cr> :vertical resize 70 <cr> <C-w>w", { remap = true, silent = false })

-- Open telescope using leader f
vim.keymap.set("n", "<leader>f", ":Telescope  <cr>", { remap = true, silent = false })

-- Open lazygit using leader g
vim.keymap.set("n", "<leader>g", ":LazyGit <cr>", { remap = true, silent = false })

-- Map leader n to :noh
vim.keymap.set("n", "<leader>n", ":noh <cr>", { remap = true, silent = false })

-- Map leader w to :w
vim.keymap.set("n", "<leader>w", ":w <cr>", { remap = true, silent = false })

-- Swap windows using alt+hjkl
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
-- Same for terminal mode
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", { noremap = true, silent = true })
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", { noremap = true, silent = true })
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", { noremap = true, silent = true })
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", { noremap = true, silent = true })

-- Slime thing (if plugin is not available)
-- vim.api.nvim_set_keymap('v', '<cr>', 'y<C-w>wpi<cr><C-\\><C-N><C-w>w', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<cr>', 'Y<C-w>wpi<cr><C-\\><C-N><C-w>w', { noremap = true, silent = true })
