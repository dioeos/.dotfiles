return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "ashen",
          "boo",
          "kanagawa",
          "miasma",
          "citruszest",
          "nvimgelion",
          "evangelion",
        }
      })
      vim.keymap.set('n', '<leader>st', ':Themery<CR>')
    end
  }
