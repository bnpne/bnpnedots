local tools = {}
local conf = require("modules.tools.config")

tools["nvim-lua/plenary.nvim"] = { opt = false }
tools["nvim-telescope/telescope.nvim"] = {
	opt = false,
	module = "telescope",
	cmd = "Telescope",
	config = conf.telescope,
	requires = {
		{ "nvim-lua/plenary.nvim", opt = false },
		{ "nvim-lua/popup.nvim", opt = false },
	},
}
tools["nvim-telescope/telescope-fzf-native.nvim"] = {
	opt = false,
	run = "make",
	after = "telescope.nvim",
}
tools["nvim-telescope/telescope-project.nvim"] = {
	opt = false,
	after = "telescope-fzf-native.nvim",
	requires = { {
		"ahmedkhalf/project.nvim",
		opt = false,
		config = conf.project,
	} },
}
tools["nvim-telescope/telescope-frecency.nvim"] = {
	opt = false,
	after = "telescope-project.nvim",
	requires = { { "kkharji/sqlite.lua", opt = false } },
}
tools["jvgrootveld/telescope-zoxide"] = {
	opt = false,
	after = "telescope-frecency.nvim",
}
tools["nvim-telescope/telescope-live-grep-args.nvim"] = {
	opt = false,
	after = "telescope-zoxide",
}
tools["chipsenkbeil/distant.nvim"] = { opt = false, config = conf.distant }
tools["michaelb/sniprun"] = {
	opt = false,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
}
tools["folke/trouble.nvim"] = {
	opt = false,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}
tools["dstein64/vim-startuptime"] = { opt = false, cmd = "StartupTime" }
tools["gelguy/wilder.nvim"] = {
	event = "CmdlineEnter",
	config = conf.wilder,
	requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
}
-- Please don't remove which-key.nvim otherwise you need to set timeoutlen=300 at `lua/core/options.lua`
tools["folke/which-key.nvim"] = {
	opt = false,
	config = conf.which_key,
}
tools["mrjones2014/legendary.nvim"] = {
	opt = false,
	cmd = "Legendary",
	config = conf.legendary,
	requires = {
		{ "stevearc/dressing.nvim", opt = false, config = conf.dressing },
		"kkharji/sqlite.lua",
		"folke/which-key.nvim",
	},
}

return tools
