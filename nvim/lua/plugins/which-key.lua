return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {

  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function ()
    local wk = require("which-key")
    wk.add({
      { "<leader>ff", function() require("flash").jump() end, desc = "Flash" },
      { "<leader>te", ":TransparentToggle<CR>", desc = "Toggle Transparency"},
      { "<leader>t", desc = "foot"},
      { "<leader>n", hidden = true },
      { "<leader>b", hidden = true },
      { "<leader>e", hidden = true },
      { "<leader>p", hidden = true },
      { "<leader>q", hidden = true },
      { "<leader>y", hidden = true },
      { "<leader>c", hidden = true },
      { "<leader>t", hidden = true },
    }, { mode = "n"})
  end
}
