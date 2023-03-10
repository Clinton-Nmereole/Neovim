-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'codota/tabnine-nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})

  -- tokyo night theme
  use 'folke/tokyonight.nvim'

  -- nightfox theme
  use 'EdenEast/nightfox.nvim'

  -- rose pine theme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        require("rose-pine").setup()
        vim.cmd('colorscheme rose-pine')
    end})

  --gruvbox theme
  use { "ellisonleao/gruvbox.nvim" }

  --sonokai theme
  use 'sainnhe/sonokai'

  --transparent 
  --use 'xiyaowong/nvim-transparent'


  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  -- treesitter playground
  use('nvim-treesitter/playground')

  --treesitter dev icons 
  use('nvim-tree/nvim-web-devicons')

  -- harpoon
  use('theprimeagen/harpoon')

  -- undotree
  use('mbbill/undotree')

  -- vim-fugitive
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},


		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
       'dsznajder/vscode-es7-javascript-react-snippets',
       run = 'yarn install --frozen-lockfile && yarn compile'
     }

  --Tabnine
  --use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

  --navigation
  use {
       "kyazdani42/nvim-tree.lua",
       requires = {"nvim-tree/nvim-web-devicons"},
       tag = "nightly" -- optional, updated every week. (see issue #1193)
  }


  --Nim plugin for syntax highlighting
  use ('alaviss/nim.nvim')

  -- lualine
  use {
       'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --indent blank line
  use('lukas-reineke/indent-blankline.nvim')

  --live server for web dev 
  use('manzeloth/live-server')

  --autorunner
  use "krshrimali/nvim-autorunner"
  -- depends on nvim-notify
  use "rcarriga/nvim-notify"

  -- debugger protocol
  use 'mfussenegger/nvim-dap'
  use("theHamsta/nvim-dap-virtual-text")
  use("nvim-telescope/telescope-dap.nvim")
  use("rcarriga/nvim-dap-ui")

  use("mfussenegger/nvim-dap-python")

  --dev icons 
  use 'ryanoasis/vim-devicons'
  --color brackets
  use("p00f/nvim-ts-rainbow")

  use('lervag/vimtex')
  use('vimwiki/vimwiki')
  use('michaelb/sniprun')
  use('CRAG666/code_runner.nvim')
  use('numToStr/Comment.nvim')
  use('glepnir/lspsaga.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end
})
  use {
	"windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
  }

end)
