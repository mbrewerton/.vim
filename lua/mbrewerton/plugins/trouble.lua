return {
    "folke/trouble.nvim",
    cmd = "Trouble",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        require('Trouble').setup()
    end
}
