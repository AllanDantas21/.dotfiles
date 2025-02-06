-- keymapsi
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- disable C lsp
vim.list_extend(lvim.lsp.automatic_configura1tion.skipped_servers, { "clangd" })

-- set timeout
vim.opt.timeoutlen = 500

lvim.plugins = {
    { 'cacharle/c_formatter_42.vim' },

    -- Plugin 42-header
    {
        "Diogo-ss/42-header.nvim",
        lazy = false,
        config = function()
            local header = require("42header")
            header.setup({
                default_map = true,   -- Mapeamento padrão <F1> no modo normal
                auto_update = true,   -- Atualiza o cabeçalho ao salvar
                user = "aldantas",
                mail = "aldantas@student.42.rio",
            })
        end
    },
}
