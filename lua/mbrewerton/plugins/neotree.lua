return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
  },
  keys = {
    {"<C-k><C-b>", ":Neotree toggle<cr>"},
    {"<C-k><C-r>", ":Neotree reveal<cr>"},
  }
}
