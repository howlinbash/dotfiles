-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			'neovim/nvim-lspconfig',             -- Required
			'williamboman/mason.nvim',           -- Optional
			'williamboman/mason-lspconfig.nvim', -- Optional

			-- Autocompletion
			'hrsh7th/nvim-cmp',         -- Required
			'hrsh7th/cmp-nvim-lsp',     -- Required
			'hrsh7th/cmp-path',         -- Optional
			'hrsh7th/cmp-buffer',       -- Optional
			'hrsh7th/cmp-nvim-lua',     -- Optional
			'saadparwaiz1/cmp_luasnip', -- Optional

			-- Snippets
			'L3MON4D3/LuaSnip',             -- Required
			'rafamadriz/friendly-snippets', -- Optional

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
		}
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		{ run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
      end
    },
	}

  use { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'francoiscabrol/ranger.vim' -- ranger fm
  use 'junegunn/fzf.vim' -- fzf
  use 'plasticboy/vim-markdown' -- markdown
  use 'prettier/vim-prettier' -- prettier
  use 'tommcdo/vim-lion' -- glip align
  use 'tpope/vim-abolish' -- case coercian
  use 'tpope/vim-commentary' -- comment code
  use 'tpope/vim-repeat' -- repeat other stuff
  use 'tpope/vim-surround' -- change surrounding chars
  use 'tpope/vim-obsession' -- session manager
  use 'wellle/targets.vim' -- change inside next
  use 'mbbill/undotree' -- undo navigator
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'onsails/lspkind.nvim' -- Fancy Icons
  use 'jose-elias-alvarez/null-ls.nvim' -- Prettier/Eslint/SpellCheck
  -- use 'nvim-treesitter/playground' -- Prettier/Eslint/SpellCheck
  use 'nvim-telescope/telescope-ui-select.nvim' -- move vim ui to telescope

  -- -- Themes
  use 'tanvirtin/monokai.nvim'
  use 'folke/tokyonight.nvim'
  -- use 'tomasr/molokai'
  -- use 'sainnhe/sonokai'
  -- use 'joshdick/onedark.vim'
  -- use 'dracula/vim'
  -- use 'NLKNguyen/papercolor-theme'
  -- use 'rakr/vim-one'
  -- use { "catppuccin/nvim", as = "catppuccin" }
-- use { 'EdenEast/nightfox.nvim', as = 'nightfox' }
  if packer_bootstrap then
    require('packer').sync()
  end
end)