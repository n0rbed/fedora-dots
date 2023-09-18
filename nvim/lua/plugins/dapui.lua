return {
    'rcarriga/nvim-dap-ui', 
    dependencies = {
        'mfussenegger/nvim-dap',
    },

    config = function()

        local dap = require("dap")
    

        local dapui = require('dapui')
        dapui.setup()
        dap.listeners.after.event_initalized["dapui_config"] = function()
            dapui.open()
        end

        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end

        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        vim.api.nvim_set_keymap("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", {noremap=true})
        vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})

        vim.api.nvim_set_keymap("n", "<leader>dj", ":lua require'dap'.step_over()<CR>", {noremap=true})
        vim.api.nvim_set_keymap("n", "<leader>dsi", ":lua require'dap'.step_into()<CR>", {noremap=true})
        vim.api.nvim_set_keymap("n", "<leader>dso", ":lua require'dap'.step_out()<CR>", {noremap=true})

        vim.api.nvim_set_keymap("n", "<leader>dc", ":lua require('dap').continue()<CR>", {noremap=true})

        vim.api.nvim_set_keymap("n", "<leader>dpr", ":lua require('dap-python').test_method()", {noremap=true})
    end,
}
