return {
	{ 'echasnovski/mini.nvim', 
	config = function()
		require('mini.statusline').setup({use_icons=true})
		require('mini.tabline').setup()
--		require('mini.icons').setup()
		require('mini.files').setup()
	end
	},
}
