local completion = {}
local conf = require("modules.completion.config")

completion["VonHeikemen/lsp-zero.nvim"] = {
	opt = false,
	requires = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-nvim-lua" },

		-- Snippets
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
	},
	config = conf.lsp,
}

-- completion["creativenull/efmls-configs-nvim"] = {
	-- opt = false,
	-- requires = "neovim/nvim-lspconfig",
-- }

return completion
