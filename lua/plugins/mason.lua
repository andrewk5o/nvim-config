local mason_icons = {
    package_installed = "✓",
    package_pending = "➜",
    package_uninstalled = "✗"
}

return {
    "williamboman/mason.nvim",
    opts = {
        ui = {
            icons = mason_icons,
        },
    },
}
