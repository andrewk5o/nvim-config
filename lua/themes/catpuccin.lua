local config = function()
    require('catppuccin').setup({
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
    })
end

return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = config
}