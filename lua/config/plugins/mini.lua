return {
	{ 'echasnovski/mini.nvim', 
	config = function()
    require('mini.icons').setup({
      style='ascii'
    })
		require('mini.statusline').setup({
			use_icons=true,
		})
		require('mini.tabline').setup()
		require('mini.files').setup()
		require('mini.bufremove').setup()
		require('mini.pairs').setup()
	end
	},
}
