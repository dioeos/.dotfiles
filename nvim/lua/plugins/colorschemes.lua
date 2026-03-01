return {
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    config = function() end,
  },
  -- Using lazy.nvim
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({
        -- optional configuration here
      })
      require("black-metal").load()
    end,
  },
}
