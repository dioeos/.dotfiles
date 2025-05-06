return {
  'rcarriga/nvim-notify',
  config = function ()
    local notify = require("notify")

    notify.setup({
      stages = "fade_in_slide_out",
      timeout = 5000,
      render = "default",
      max_width = 80,
      fps = 60
    })
    vim.notify = notify

    vim.keymap.set('n', "<leader>nh", ":Telescope notify<CR>", { desc = "View notification history"} )
  end

}
