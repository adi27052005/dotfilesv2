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
  use 'wbthomason/packer.nvim'

  use 'sainnhe/everforest'
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/gruvbox-material'
  use 'folke/tokyonight.nvim'
  -- use 'tomasr/molokai'
  -- use 'catppuccin/nvim'
  -- use 'shaunsingh/moonlight.nvim'
  -- use 'EdenEast/nightfox.nvim'
  -- use 'rose-pine/neovim'
  use 'Yazeed1s/oh-lucy.nvim'
  use 'Yazeed1s/minimal.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'itchyny/calendar.vim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'preservim/vimux'
  use 'christoomey/vim-tmux-navigator'
  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"


  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim",
  }

  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use { 'tamton-aquib/flirt.nvim' }
  use 'windwp/nvim-ts-autotag'
  use { "derektata/lorem.nvim" }
  use 'manzeloth/live-server'
  use 'tpope/vim-commentary'
  use "lukas-reineke/indent-blankline.nvim"
  use 'xiyaowong/nvim-transparent'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

