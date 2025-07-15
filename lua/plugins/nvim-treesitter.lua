return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "html",
                "rust",
                "markdown",
                "markdown_inline",
                "css",
                "bash",
                "json",
                "yaml",
                "python",
                "typescript",
                "tsx",
                "go",
                "dockerfile",
                "sql"
            },
            ignore_install = {},
            modules = {},
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
