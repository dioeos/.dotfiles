return {
  {
    'folke/todo-comments.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },

    config = function()
      require("todo-comments").setup({})
      vim.keymap.set("n", "<leader>td", function ()
        local ft = vim.bo.filetype
        local comment_str = ({
          lua = "--",
          python = "#",
          javascript = "//",
          typescript = "//",
          c = "//",
          cpp = "//",
          sh = "#",
          rust = "//",
        })[ft] or "//"

        vim.api.nvim_put({ comment_str .. " TODO: " }, "l", true, true)
      end, { desc = "Insert TODO comment" })

      vim.keymap.set("n", "<leader>fx", function ()
        local ft = vim.bo.filetype
        local comment_str = ({
          lua = "--",
          python = "#",
          javascript = "//",
          typescript = "//",
          c = "//",
          cpp = "//",
          sh = "#",
          rust = "//",
        })[ft] or "//"

        vim.api.nvim_put({ comment_str .. " FIX: " }, "l", true, true)
      end, { desc = "Insert FIX comment" })

      vim.keymap.set("n", "<leader>nt", function ()
        local ft = vim.bo.filetype
        local comment_str = ({
          lua = "--",
          python = "#",
          javascript = "//",
          typescript = "//",
          c = "//",
          cpp = "//",
          sh = "#",
          rust = "//",
        })[ft] or "//"

        vim.api.nvim_put({ comment_str .. " NOTE: " }, "l", true, true)
      end, { desc = "Insert NOTE comment" })
    end,
  },

  {
    'numToStr/Comment.nvim',
    opts = {

    },
    config = function ()
      require('Comment').setup()
      
    end

  }
}
