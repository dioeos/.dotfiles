return {
	"lervag/vimtex",
	lazy = false,
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		vim.g.vimtex_view_method = "general"
		-- vim.g.vimtex_view_general_viewer = 'SumatraPDF'
		-- vim g.vimtex_view_general_options
		--   \ = '-reuse-instance -forward-search @tex @line @pdf'
	end,
}
