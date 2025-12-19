return {
	{
		"MunifTanjim/eslint.nvim",
		lazy = false,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.arduino_language_server.setup({
				cmd = {
					"arduino-language-server",
					"-cli-config",
					"/Users/raahimshahzadazfar/Library/Arduino15/arduino-cli.yaml",
					"-fqbn",
					"arduino:avr:uno", -- Replace with your board's actual fqbn
					"-cli",
					"arduino-cli",
				},
				capabilities = capabilities,
			})
			vim.lsp.config.html.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.lua_ls.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.jsonls.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.eslint_lsp.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.ts_ls.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.tailwindcss.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.cssls.setup({
				capabilities = capabilities,
			})
			vim.lsp.config.emmet_language_server.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
