return {
    'nvim-lualine/lualine.nvim',
    config = function ()
        local lualine = require('lualine')

        local config = {
            options = {
                theme = 'pastelnight'
            }
        }

        lualine.setup(config);
    end
}
