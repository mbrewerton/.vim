return {
    'pauchiner/pastelnight.nvim',
    config = function ()
        local pastelnight = require("pastelnight");
        pastelnight.setup({
            hide_inactive_statusline = true,
        })
    end
}
