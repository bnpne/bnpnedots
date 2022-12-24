local editor = {}
local conf = require("modules.editor.config")

editor["junegunn/vim-easy-align"] = { opt = false, cmd = "EasyAlign" }
editor["RRethy/vim-illuminate"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.illuminate,
}
editor["terrortylor/nvim-comment"] = {
	opt = false,
	config = conf.nvim_comment,
}
editor["nvim-treesitter/nvim-treesitter"] = {
	opt = false,
	run = ":TSUpdate",
	event = "BufReadPost",
	config = conf.nvim_treesitter,
}
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
	opt = false,
	after = "nvim-treesitter",
}
editor["p00f/nvim-ts-rainbow"] = {
	opt = false,
	after = "nvim-treesitter",
}
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
	opt = false,
	after = "nvim-treesitter",
}
editor["mfussenegger/nvim-ts-hint-textobject"] = {
	opt = false,
	after = "nvim-treesitter",
}
editor["windwp/nvim-ts-autotag"] = {
	opt = false,
  after = "nvim-treesitter",
	config = conf.autotag,
}
editor["windwp/nvim-autopairs"] = {
  opt = false,
  after = "nvim-treesitter",
  config = conf.autopairs
}
editor["andymass/vim-matchup"] = {
	opt = false,
	after = "nvim-treesitter",
}
editor["rainbowhxch/accelerated-jk.nvim"] = {
	opt = false,
	event = "BufWinEnter",
	config = conf.accelerated_jk,
}
editor["rhysd/clever-f.vim"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.clever_f,
}
editor["romainl/vim-cool"] = {
	opt = false,
	event = { "CursorMoved", "InsertEnter" },
}
editor["phaazon/hop.nvim"] = {
	opt = false,
	branch = "v2",
	event = "BufReadPost",
	config = conf.hop,
}
editor["karb94/neoscroll.nvim"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.neoscroll,
}
editor["akinsho/toggleterm.nvim"] = {
	opt = false,
	event = "UIEnter",
	config = conf.toggleterm,
}
editor["NvChad/nvim-colorizer.lua"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.nvim_colorizer,
}
editor["rmagatti/auto-session"] = {
	opt = false,
	cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
	config = conf.auto_session,
}
editor["max397574/better-escape.nvim"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.better_escape,
}

editor["tpope/vim-fugitive"] = { opt = false, cmd = { "Git", "G" } }
editor["famiu/bufdelete.nvim"] = {
	opt = false,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}

editor["sindrets/diffview.nvim"] = {
	opt = false,
	cmd = { "DiffviewOpen", "DiffviewClose" },
}
editor["luukvbaal/stabilize.nvim"] = {
	opt = false,
	event = "BufReadPost",
}
editor["ibhagwan/smartyank.nvim"] = {
	opt = false,
	event = "BufReadPost",
	config = conf.smartyank,
}

-- only for fcitx5 user who uses non-English language during coding
-- editor["brglng/vim-im-select"] = {
-- 	opt = false,
-- 	event = "BufReadPost",
-- 	config = conf.imselect,
-- }

return editor
