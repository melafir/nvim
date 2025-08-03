return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim',
      {"nvim-telescope/telescope-fzf-native.nvim", build="make"}
    },
    config=function ()
      -- Fuzyfind in work dir
      vim.keymap.set("n","<leader>ff",function ()
        require('telescope.builtin').find_files(require('telescope.themes').get_ivy())
      end)
      -- Fuzyfind in neovim config dir
      vim.keymap.set("n","<leader>fn",function ()
        require('telescope.builtin').find_files(require('telescope.themes').get_dropdown(
        {cwd = vim.fn.stdpath("config")}
        ))
      end)
      -- Fuzyfind in neovim config dir
      vim.keymap.set("n","<leader>fb",function ()
        require('telescope.builtin').buffers(require('telescope.themes').get_dropdown())
      end)
    end
}
