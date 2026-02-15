return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		workspaces = {
			{
				name = "vault",
				path = "~/vaults/Perfect Vault",
			},
		},
		notes_subdir = "2026",
		daily_notes = {
			folder = "2026",
			default_tags = {},
		},
		templates = {
			folder = "Housekeeping/Templates",
		},
		picker = {
			name = "telescope.nvim",
		},
		completion = {
			new_notes_location = "2026",
		},
		disable_frontmatter = false,
		note_frontmatter_func = function(note)
			if note.title then
				note:add_alias(note.title)
			end

			local out = { id = note.id, aliases = note.aliases, tags = note.tags }
			-- `note.metadata` contains any manually added fields in the frontmatter.
			-- So here we just make sure those fields are kept in the frontmatter.
			if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
				for k, v in pairs(note.metadata) do
					out[k] = v
				end
			end

			return out
		end,
	},
}
