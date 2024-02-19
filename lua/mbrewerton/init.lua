require("mbrewerton.set")
require("mbrewerton.remap")
require("mbrewerton.lazy")

-- Highlight yanks
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('HighlightYank', {}),
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 500,
        })
    end,
})
vim.api.nvim_command [[colorscheme pastelnight]]
