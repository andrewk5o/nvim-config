return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        signs_staged = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        signs_staged_enable = true,
        signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
        numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
            follow_files = true
        },
        auto_attach = true,
        attach_to_untracked = false,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 1000,
            ignore_whitespace = false,
            virt_text_priority = 100,
            use_focus = true,
        },
        current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
            -- Options passed to nvim_open_win
            style = 'minimal',
            relative = 'cursor',
            row = 0,
            col = 1
        },
        on_attach = function(bufnr)
            local gitsigns = require('gitsigns')
            local wk = require("which-key")

            -- Navigation
            wk.add({
                mode = "n",
                buffer = bufnr,
                {
                    "]c",
                    function()
                        if vim.wo.diff then
                            vim.cmd.normal({']c', bang = true})
                        else
                            gitsigns.nav_hunk('next')
                        end
                    end,
                    desc = "Next Hunk"
                },
                {
                    "[c",
                    function()
                        if vim.wo.diff then
                            vim.cmd.normal({'[c', bang = true})
                        else
                            gitsigns.nav_hunk('prev')
                        end
                    end,
                    desc = "Prev Hunk"
                }
            })

            -- Actions
            wk.add({
                mode = "n",
                buffer = bufnr,
                { "<leader>h", group = "Git" },
                { "<leader>hs", gitsigns.stage_hunk, desc = "Stage Hunk" },
                { "<leader>hr", gitsigns.reset_hunk, desc = "Reset Hunk" },
                { "<leader>hS", gitsigns.stage_buffer, desc = "Stage Buffer" },
                { "<leader>hR", gitsigns.reset_buffer, desc = "Reset Buffer" },
                { "<leader>hp", gitsigns.preview_hunk, desc = "Preview Hunk" },
                { "<leader>hi", gitsigns.preview_hunk_inline, desc = "Prewview Hunk Inline" },
                { "<leader>hd", gitsigns.diffthis, desc = "Diff"},
                { "<leader>hD", function() gitsigns.diffthis("~") end, desc = "Diff (~)"},
                { "<leader>hb", function() gitsigns.blame_line({ full = true }) end, desc = "Blame Line (Full)" },
                { "<leader>hQ", function() gitsigns.setqflist("all") end, desc = "Quick Fix (All)"},
                { "<leader>hq", gitsigns.setqflist, desc = "Quick Fix" },
            })

            wk.add({
                mode = "v",
                buffer = bufnr,
                { "<leader>hs", function() gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end, desc = "Stage Hunk"},
                { "<leader>hs", function() gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end, desc = "Reset Hunk"}
            })

            -- Toggles
            wk.add({
                mode = "n",
                buffer = bufnr,
                { "<leader>t", group = "Toggle" },
                { "<leader>tb", gitsigns.toggle_current_line_blame, desc = "Toggle Current Line Blame" },
                { "<leader>tw", gitsigns.toggle_word_diff, desc = "Toggle Word Diff" }
            })

            -- Text object
            wk.add({
                mode = {"o", "x"},
                buffer = bufnr,
                { "ih", gitsigns.select_hunk, desc = "Select Hunk" }
            })
        end
    }
}
