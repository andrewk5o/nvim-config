local mason_icons = {
    package_installed = "✓",
    package_pending = "➜",
    package_uninstalled = "✗"
}

local lsp_config = function()
    local lspconfig = require("lspconfig")
    local util = require "lspconfig/util"
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.rust_analyzer.setup {
	capabilities = capabilities,
        filetypes = {"rust"},
        root_dir = util.root_pattern("Cargo.toml"),
        settings = {
            ["rust-analyzer"] = {
		cargo = {
		    allFeatures = true,
	        }
	    }
        }
    }
end

return {
    {
        "williamboman/mason.nvim",
        config = function()
	    require('mason').setup {
                ui = { icons = mason_icons }
            }
	end,
    },
    {
    	"williamboman/mason-lspconfig.nvim",
	config = function()
	    require("mason-lspconfig").setup {
		ensure_installed = { "lua_ls", "rust_analyzer" },
	    }
	end,
    },
    {
        "neovim/nvim-lspconfig",
        config = lsp_config
    }
}
