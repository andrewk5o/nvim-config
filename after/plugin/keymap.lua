require("which-key").add({
    -- Telesckope
    { "<leader>f", group = "Telescope" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (Telescope)" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep (Telescope)" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers (Telescope)" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help Tags (Telescope)" },

    -- Trouble
    { "<leader>x", group = "Trouble" },
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
    { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    { "<leader>c", group = "Code" },
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
    { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },

    -- Diagnostics
    { "<leader>e", vim.diagnostic.open_float, desc = "Show diagnostics" },
})

