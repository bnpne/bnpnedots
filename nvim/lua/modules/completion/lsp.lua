local formatting = require("modules.completion.formatting")

local lsp = require("lsp-zero")
 
lsp.preset("recommended")
lsp.setup()

local function custom_attach(client, bufnr)
		require("lsp_signature").on_attach({
			bind = true,
			use_lspsaga = false,
			floating_window = true,
			fix_pos = true,
			hint_enable = true,
			hi_parameter = "Search",
			handler_opts = { "double" },
		})
	end

	local efmls = require("efmls-configs")

	efmls.init({
		on_attach = custom_attach,
		capabilities = capabilities,
		init_options = { documentFormatting = true, codeAction = true },
	})

	-- Require `efmls-configs-nvim`'s config here

	local vint = require("efmls-configs.linters.vint")
	local eslint = require("efmls-configs.linters.eslint")
	local shellcheck = require("efmls-configs.linters.shellcheck")

	local black = require("efmls-configs.formatters.black")
	local stylua = require("efmls-configs.formatters.stylua")
	local prettier = require("efmls-configs.formatters.prettier")
	local shfmt = require("efmls-configs.formatters.shfmt")

	efmls.setup({
		vim = { formatter = vint },
		lua = { formatter = stylua },
		c = { formatter = clangfmt },
		cpp = { formatter = clangfmt },
		python = { formatter = black },
		vue = { formatter = prettier },
		typescript = { formatter = prettier, linter = eslint },
		javascript = { formatter = prettier, linter = eslint },
		typescriptreact = { formatter = prettier, linter = eslint },
		javascriptreact = { formatter = prettier, linter = eslint },
		yaml = { formatter = prettier },
		html = { formatter = prettier },
		css = { formatter = prettier },
		scss = { formatter = prettier },
		sh = { formatter = shfmt, linter = shellcheck },
		markdown = { formatter = prettier },
		-- rust = {formatter = rustfmt},
	})
  
formatting.configure_format_on_save()
