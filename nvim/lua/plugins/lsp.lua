return {
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ast_grep", "clangd" },
				automatic_enable = true
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = {
								'vim',
								'require'
							},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						}
					}
				}
			})
		end
	},
	{
		'saghen/blink.cmp',
		version = '1.*',
		opts = {
			keymap = { preset = 'default' },
			completion = { documentation = { auto_show = true } },
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},
			fuzzy = { implementation = "prefer_rust" }
		},
		opts_extend = { "sources.default" }
	}
}
