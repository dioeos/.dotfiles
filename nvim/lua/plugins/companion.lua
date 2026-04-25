return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		opts = {
			log_level = "DEBUG",
		},

		display = {
			chat = {
				window = {
					layout = "vertical",
					position = "right",
					width = 0.40,
				},
			},
		},

		adapters = {
			http = {
				ollama = function()
					return require("codecompanion.adapters").extend("ollama", {
						env = {
							url = os.getenv("OLLAMA_URL"),
						},
						schema = {
							model = {
								default = "qwen2.5-coder:7b",
							},
						},
					})
				end,
			},
			acp = {
				codex = function()
					return require("codecompanion.adapters").extend("codex", {
						defaults = {
							auth_method = "chatgpt",
						},
					})
				end,
			},
		},
		interactions = {
			chat = {
				adapter = {
					name = "ollama",
					model = "qwen2.5-coder:7b",
				},
			},
			inline = {
				adapter = {
					name = "ollama",
					model = "qwen2.5-coder:7b",
				},
			},
			cli = {
				agent = "codex",
				agents = {
					codex = {
						cmd = "codex",
						args = {},
						provider = "terminal",
					},
				},
			},
		},
	},

	keys = {
		{ "<leader>cc", "<cmd>CodeCompanionChat Toggle<CR>", mode = "n", desc = "CodeCompanion Chat" },
		{ "<leader>ci", "<cmd>CodeCompanionCLI<CR>", mode = "n", desc = "CodeCompanion CLI" },
		{ "<leader>ck", "<cmd>CodeCompanionActions<CR>", mode = "n", desc = "Open CodeCompanion Action Palette" },
	},
}
