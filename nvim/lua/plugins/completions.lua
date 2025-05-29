return {
	{
		"saghen/blink.cmp",
		dependencies = {
			{
				"rafamadriz/friendly-snippets",
			},
			{
				"L3MON4D3/LuaSnip",
				version = "v2.4.0",
				build = "make install_jsregexp",
				config = function()
					local is_wsl = vim.fn.has("wsl") == 1
					local snippets_path = is_wsl and "/mnt/c/Users/eryan/.dotfiles/nvim/lua/snippets/"
						or vim.fn.expand("~/.dotfiles/nvim/lua/snippets/")
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip.loaders.from_lua").lazy_load({
						paths = { vim.fn.expand(snippets_path) },
					})
				end,
			},
		},

		version = "1.*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
			-- 'super-tab' for mappings similar to vscode (tab to accept)
			-- 'enter' for enter to accept
			-- 'none' for no mappings
			--
			-- All presets have the following mappings:
			-- C-space: Open menu or open docs if already open
			-- C-n/C-p or Up/Down: Select next/previous item
			-- C-e: Hide menu
			-- C-k: Toggle signature help (if signature.enabled = true)
			--
			-- See :h blink-cmp-config-keymap for defining your own keymap
			keymap = { preset = "default" },

			appearance = {
				nerd_font_variant = "mono",
			},

			-- (Default) Only show the documentation popup when manually triggered
			completion = { documentation = { auto_show = true } },
			signature = { enabled = true },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
			snippets = { preset = "luasnip" },
		},
		opts_extend = { "sources.default" },
	},
}
