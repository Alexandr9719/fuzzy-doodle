return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp_config = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lsp_config.lua_ls.setup({
			capabilities = capabilities,
		})
		lsp_config.gopls.setup({
			capabilities = capabilities,
		})

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set({ "n", "v" }, "<leader>gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>gr", vim.lsp.buf.references, {})
	end,
}
