vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  
  use { 
      "folke/tokyonight.nvim"
  }

  use {
	  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}

  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
  }

  use 'ryanoasis/vim-devicons'

  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-tree/nvim-web-devicons'

  use 'mhinz/vim-startify'
	
  use {"akinsho/toggleterm.nvim", tag = '*'}

  use 'voldikss/vim-floaterm'

  use {
	  'jdhao/better-escape.vim', event = 'InsertEnter', config = function()
		  vim.g.better_escape_shortcut = 'jk'

		  vim.g.better_escape_interval = 1000
	  end

  }

  use 'karb94/neoscroll.nvim'

  use 'mg979/vim-visual-multi'

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'preservim/nerdcommenter'

  use 'preservim/tagbar'

  use 'jose-elias-alvarez/null-ls.nvim'

end)
