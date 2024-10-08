-- Map leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Open terminal window with alt t
vim.keymap.set("n", "<A-t>", ":vert term <cr> :vertical resize 67 <cr> <C-w>w", { remap = true, silent = false })

-- Open telescope using leader t
vim.keymap.set("n", "<leader>t", ":Telescope  <cr>", { remap = true, silent = false })

-- Open telescope buffers using leader b
vim.keymap.set("n", "<leader>b", ":Telescope buffers <cr>", { remap = true, silent = false })

-- Open telescope find files using leader f
vim.keymap.set("n", "<leader>f", ":Telescope find_files <cr>", { remap = true, silent = false })

-- Open telescope live_grep using leader l
vim.keymap.set("n", "<leader>l", ":Telescope live_grep <cr>", { remap = true, silent = false })

-- Open lazygit using leader g
vim.keymap.set("n", "<leader>g", ":LazyGit <cr>", { remap = true, silent = false })

-- Map leader h to :noh
vim.keymap.set("n", "<leader>h", ":noh <cr>", { remap = true, silent = false })

-- Map leader w to :w
vim.keymap.set("n", "<leader>w", ":w <cr>", { remap = true, silent = false })

-- Map leader e to netrw for the directory of curent file
vim.keymap.set("n", "<leader>e", ":Explore <cr>", { remap = true, silent = false })

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

