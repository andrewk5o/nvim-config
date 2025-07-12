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
        "neovim/nvim-lspconfig",
        config = lsp_config
    }
}
