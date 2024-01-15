return {
    'OmniSharp/omnisharp-vim',
    version = '*',
    config = function ()
        vim.g.OmniSharp_server_use_net6 = 1
    end
}
