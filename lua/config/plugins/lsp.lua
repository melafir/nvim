return{
	{"neovim/nvim-lspconfig",
  --dependencies = { 'saghen/blink.cmp' },
	config=function()
    local lsp = require'lspconfig'
    lsp.clangd.setup{
   --  capabilities = require('blink.cmp').get_lsp_capabilities(lsp.clangd.capabilities)
    }
    lsp.ts_ls.setup{}
    lsp.html.setup{}
    lsp.cssls.setup{}
    lsp.lua_ls.setup{}
    end
  },
{
  'saghen/blink.cmp',
--  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = { preset = 'super-tab' },
    completion = {
      list = {
        selection = {
          preselect = false
        }
      }
    },

    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'normal',
      kind_icons = {
    Text = 'Tx',
    Method = 'Mth',
    Function = 'F',
    Constructor = 'C',

    Field = 'Fi',
    Variable = 'V',
    Property = 'Pr',

    Class = 'Cl',
    Interface = 'I',
    Struct = 'S',
    Module = 'M',

    Unit = 'U',
    Value = 'V',
    Enum = 'E',
    EnumMember = 'Em',

    Keyword = 'K',
    Constant = 'co',

    Snippet = 'Sn',
    Color = 'Cr',
    File = 'Fi',
    Reference = 'R',
    Folder = 'Fo',
    Event = 'Ev',
    Operator = 'O',
    TypeParameter = 'T',
  },
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 
        'lsp',
      'path', 
      'snippets', 
      --'buffer' 
      },
    },
  },
  opts_extend = { "sources.default" }
}
}
