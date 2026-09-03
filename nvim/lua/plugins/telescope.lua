return {
	"nvim-telescope/telescope.nvim",
	-- Pinned past 0.1.8 because released tags still use the removed ft_to_lang API.
	commit = "427b576c16792edad01a92b89721d923c19ad60f",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>" },
	},
}
