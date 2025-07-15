return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = { char = "│" },
        whitespace = {
            -- highlight = { "Whitespace", "NonText" },
            remove_blankline_trail = false,
        },
        scope = {
            enabled = true,
            show_start = false,
            show_end = false,
        },
    }
}

