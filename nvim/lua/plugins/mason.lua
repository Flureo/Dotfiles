return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
		ensure_installed = { "lua_ls" },
		automatic_enable = true,
	},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
		{ 
			"neovim/nvim-lspconfig",
			config = function()
				vim.keymap.set("n", "K", vim.lsp.buf.hover)
				vim.lsp.config("lua_ls", { settings = { Lua = { 
					diagnostics = { globals = { "vim", "require" } }, 
					workspace = { library = vim.api.nvim_get_runtime_file("", true) } 
				} } })
			end
		}
    }
}
