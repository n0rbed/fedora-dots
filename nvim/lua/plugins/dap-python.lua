return {
    'mfussenegger/nvim-dap-python',
    dependencies = {
        'mfussenegger/nvim-dap',
    },

    config = function(_, opts)
        require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
        local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
        require("dap-python").setup(path)
    end,


}
