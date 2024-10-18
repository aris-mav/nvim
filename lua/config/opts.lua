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

vim.opt.hlsearch = false -- Do not highlight search results
vim.opt.incsearch = true -- Highlight search results only as you type
vim.opt.scrolloff = 5 -- Number of lines to keep above and below the cursor

-- Julia lsp config
require'lspconfig'.julials.setup{
    on_new_config = function(new_config, _)
        local julia = vim.fn.expand("C:\\Users\\f21157am\\.julia\\environments\\nvim-lspconfig")
        if require'lspconfig'.util.path.is_file(julia) then
	    vim.notify("Hello!")
            new_config.cmd[1] = julia
        end
    end
}

