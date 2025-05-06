return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},

    config = function()
        require("ibl").setup()

        local function init()
            vim.defer_fn(function()
                vim.cmd("IBLDisable")
            end, 0)
        end

        init()

        local ibl_active = false

        function ToggleIbl()
            if ibl_active then
                vim.cmd("IBLDisable")
                vim.notify("Indent guides OFF", vim.log.levels.INFO, { title = "IBL"})
            else
                vim.cmd("IBLEnable")
                vim.notify("Indent guides ON", vim.log.levels.INFO, { title = "IBL" })
            end
            ibl_active = not ibl_active
        end

        vim.keymap.set("n", "<leader>ti", ToggleIbl, {desc = "Toggle indent guides."})
    end,
}
