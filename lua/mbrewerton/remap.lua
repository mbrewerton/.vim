vim.g.mapleader = " "

-- Paste without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Remap macro record
vim.keymap.set("n", "<leader>m", "q")
vim.keymap.set("n", "q", "<nop>")

-- Yank to clipboard
vim.keymap.set("v", "yc", [["+y]])

-- >, < tabs in/out visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Bubble sort lines
vim.keymap.set("n", "<A-k>", "ddkP")
vim.keymap.set("n", "<A-j>", "ddp")
vim.keymap.set("v", "<C-k><C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-j><C-j>", ":m '>+1<CR>gv=gv")

-- <C-[h, j, k, l]> navigates to the [window left, down, up, right]
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- <C-w><C-[h, l]> navigates to the previous and next tab
vim.keymap.set("n", "<C-w><C-h>", ":tabprevious<CR>")
vim.keymap.set("n", "<C-w><C-l>", ":tabnext<CR>")

vim.keymap.set({"v", "i", "n"}, "<Bslash><Bslash>", "<C-[>", { noremap = true, silent = true })

-- Persistence
-- restore the session for the current directory
-- vim.keymap.set("n", "<leader>qs", "<cmd>lua require'persistence'.load()<cr>", { silent = true})
--
-- -- restore the last session
-- vim.keymap.set("n", "<leader>ql", "<cmd>lua require'persistence'.load({ last = true })<cr>", { silent = true })
--
-- -- stop Persistence => session won't be saved on exit
-- vim.keymap.set("n", "<leader>qd", "<cmd>lua require'persistence'.stop()<cr>", { silent = true })

-- Dap debugger keybinds
vim.keymap.set("n", "F5", "<Cmd>lua require'dap'.continue()<CR>", { silent = true })
vim.keymap.set("n", "F10", "<Cmd>lua require'dap'.step_over()<CR>", { silent = true })
vim.keymap.set("n", "F11", "<Cmd>lua require'dap'.step_into()<CR>", { silent = true })
--vim.keymap.set("n", "F12", "<Cmd>lua require'dap'.step_out()<CR>", { silent = true })
vim.keymap.set("n", "<Leader>db", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dB", "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = true })
vim.keymap.set("n", "<Leader>lp", "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dl", "<Cmd>lua require'dap'.run_last()<CR>", { silent = true })

-- fugitive
vim.keymap.set("n", "g,", "<cmd>diffget //2<cr>")
vim.keymap.set("n", "g.", "<cmd>diffget //3<cr>")

-- Diagnostics keybinds
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
