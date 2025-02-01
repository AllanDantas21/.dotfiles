-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- keymapsi
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- disable C lsp
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })

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
