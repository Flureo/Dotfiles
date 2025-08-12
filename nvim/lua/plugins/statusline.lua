return {
    'nvim-lualine/lualine.nvim',
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true,
				component_separators = {},
				section_separators = {},
			}
		})
	end
}
