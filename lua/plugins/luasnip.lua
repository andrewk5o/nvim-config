return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
        keys = function ()
            local ls = require("luasnip");
            return {
                {
                    "<C-K>",
                    function() ls.expand() end,
                    mode = { "i" },
                    desc = "Luasnip: Expand snippet",
                    silent = true,
                },
                {
                    "<C-L>",
                    function() ls.jump(1) end,
                    mode = { "i", "s" },
                    desc = "Luasnip: Jump forward",
                    silent = true,
                },
                {
                    "<C-J>",
                    function() ls.jump(-1) end,
                    mode = { "i", "s" },
                    desc = "Luasnip: Jump backward",
                    silent = true,
                },
                {
                    "<C-E>",
                    function()
                      if ls.choice_active() then
                        ls.change_choice(1)
                      end
                    end,
                    mode = { "i", "s" },
                    desc = "Luasnip: Change choice",
                    silent = true,
                },
            }
        end,

        opts = {},
    },
    -- "saadparwaiz1/cmp_luasnip",
}
