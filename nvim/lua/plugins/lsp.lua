return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig"
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "jinja_lsp", "html", "emmet_language_server" }
            })
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            lspconfig.lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  hint = { enable = true},
                }
              },

            })

            lspconfig.pyright.setup({
              capabilities = capabilities,
            })

            lspconfig.jinja_lsp.setup({
              capabilities = capabilities,
            })

            lspconfig.html.setup({
              capabilities = capabilities,
            })

            lspconfig.emmet_language_server.setup({
              capabilities = capabilities,
              filetypes = { "html", "css", "scss", "javascriptreact", "typescriptreact" },
            })

            vim.diagnostic.config({
                virtual_text = {
                    prefix = "●",
                    spacing = 4,
                    source = "if_many",
                },
                signs = false,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })

            vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, { desc = "Show diagnostic message" })
        end,
   },

    {
        "nvim-telescope/telescope-ui-select.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = require("telescope.themes").get_dropdown({})
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
