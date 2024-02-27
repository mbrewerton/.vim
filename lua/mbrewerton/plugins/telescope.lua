return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
    keys = {
        {"<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>"},
        {"<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<cr>"},
        {"<F12>", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>"},
        {"<C-F12>", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>"},
        {"<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>"},
        {"<leader>:", "<cmd>lua require('telescope.builtin').command_history()<cr>"},
        {"<leader>/", "<cmd>lua require('telescope.builtin').search_history()<cr>"},
        {"<leader>ht", "<cmd>lua require('telescope.builtin').help_tags()<cr>"},
    },
    config = function()
      require('telescope').setup()
    end
  }
