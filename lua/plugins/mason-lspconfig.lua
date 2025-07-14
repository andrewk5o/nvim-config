return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "rust_analyzer",
        },
        automatic_enable = true,
    },
    dependencies = {
        "nvim-lspconfig",
    }
}
