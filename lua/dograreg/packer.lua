-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- -- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--   -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use({
		'rose-pine/nvim',
		as = 'rose-pine',
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-lua/plenary.nvim')
	use('ThePrimeagen/harpoon')
	use('tpope/vim-fugitive')

	use('ray-x/lsp_signature.nvim')

	use {
		'VonHeikemen/lsp-zero.nvim', tag = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },
			{ 'neovim/nvim-lspconfig' },
			{ 'L3MON4D3/LuaSnip' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'rafamadriz/friendly-snippets' },
		} }
	use {
		"nvimtools/none-ls.nvim",
		require = { "nvim-lua/plenary.nvim" }
	}

	use {
		"windwp/nvim-autopairs"
	}
end)
