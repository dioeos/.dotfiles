return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

      parser_config.jinja2 = {
            install_info = {
                url = "https://github.com/dbt-labs/tree-sitter-jinja2",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "jinja",
      }

      require("nvim-treesitter.configs").setup {
          ensure_installed = {
              "c", "lua", "vim", "vimdoc", "query",
              "markdown", "markdown_inline",
              "python", "javascript", "html", "css",
              "jinja",
          },

          sync_install = false,
          auto_install = true,

          highlight = {
              enable = true,

              disable = { "c", "rust" },

              disable = function(lang, buf)
                  local max_filesize = 100 * 1024 -- 100 KB
                  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                  if ok and stats and stats.size > max_filesize then
                      return true
                  end
              end,

              additional_vim_regex_highlighting = { "jinja" },
          },
      }
    end,
}
