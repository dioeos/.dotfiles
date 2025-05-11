return {

    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    
    config = function ()
        local harpoon_ui = require("harpoon.ui")
        local harpoon_mark = require("harpoon.mark")

        vim.keymap.set('n', "<leader>h", function ()
            harpoon_ui.toggle_quick_menu()
        end)

        vim.keymap.set('n', '<leader>hm', ':Telescope harpoon marks<CR>')

        vim.keymap.set('n', "<leader>m", function ()
            harpoon_mark.add_file()
            vim.notify("File harpooned!", vim.log.levels.INFO, { title = "Harpoon" })
        end)

        vim.keymap.set('n', "<leader>n", function ()
            harpoon_ui.nav_next()
        end, {desc = "Cycle next in harpooned files"})

        vim.keymap.set('n', "<leader>b", function ()
            harpoon_ui.nav_prev()
        end, {desc = "Cycle previous in harpooned files"})

        for i = 1, 10 do
            vim.keymap.set('n', "<leader>" .. i, function ()
                harpoon_ui.nav_file(i)
            end)
        end
    end,
}
