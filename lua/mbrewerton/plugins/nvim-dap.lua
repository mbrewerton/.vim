return {
    'mfussenegger/nvim-dap',
    config = function ()
        local dap = require('dap');
        dap.adapters.coreclr = {
          type = 'executable',
          command = '/home/matt/.local/share/netcoredbg',
          args = {'--interpreter=vscode'}
        }
        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                    -- return vim.fn.input('Path to dll: ')
                end,
            },
            {
                type = "coreclr",
                name = "attach - netcoredbg",
                request = "attach",
                processId = require('dap.utils').pick_process,
            },
        }
        require('dap.ext.vscode').load_launchjs(nil, { dotnet = { 'cs' } })
    end
}
