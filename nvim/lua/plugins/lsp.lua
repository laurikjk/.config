return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			local capabilities = cmp_nvim_lsp.default_capabilities()

			local function enable_server(name, config)
				vim.lsp.config(name, config)
				vim.lsp.enable(name)
			end

			enable_server("lua_ls", {
				capabilities = capabilities,
			})
			enable_server("ts_ls", {
				capabilities = capabilities,
			})
			enable_server("svelte", {
				capabilities = capabilities,
			})
			enable_server("clangd", {
				capabilities = capabilities,
				init_options = {
					-- Default to C++20 when no compile commands
					fallbackFlags = { "-std=c++20" },
				},
			})
			enable_server("pyright", {
				capabilities = capabilities,
			})

			enable_server("rust_analyzer", {
				capabilities = capabilities,
			})

			enable_server("glsl_analyzer", {
				capabilities = capabilities,
			})
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				end,
			})
		end,
	}
}
