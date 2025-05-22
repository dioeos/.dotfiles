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
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"jinja_lsp",
					"html",
					"emmet_language_server",
					"clangd",
				},
			})
			local lspconfig = require("lspconfig")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					client.server_capabilities.signatureHelpProvider = false
				end,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						hint = { enable = true },
					},
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
				filetypes = {
					"html",
					"css",
					"scss",
					"javascriptreact",
					"typescriptreact",
					"javascript",
				},
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
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"clang-format",
					"stylua",
					"black",
					"prettier",
					"codelldb",
				},
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.prettier,
				},
				on_attach = function(client, bufnr)
					local bufmap = function(mode, lhs, rhs)
						vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
					end
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})

						bufmap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<CR>")
					end
				end,
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = require("telescope.themes").get_dropdown({}),
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
