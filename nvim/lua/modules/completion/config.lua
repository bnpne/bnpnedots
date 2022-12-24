local config = {}

function config.lsp()
	local lsp = require("lsp-zero")

	lsp.preset("recommended")
	lsp.setup()
end

return config
