return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>f", "<cmd>Telescope find_files<cr>" },
		{ "<leader> ", "<cmd>Telescope find_files<cr>" },
		{ "<leader>g", "<cmd>Telescope live_grep<cr>" },
	},
}
