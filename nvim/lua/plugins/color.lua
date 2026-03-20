return {
	"Mofiqul/vscode.nvim",
	config = function()
    local vscode = require("vscode")
    vscode.setup({
      transparent = false,
      italic_comments = true,
      disable_nvimtree_bg = true,
    })


    vim.cmd("colorscheme vscode")

    -- keymap to toggle between light and dark themes
    vim.keymap.set("n", "<leader>lm", function()
      local current_bg = vim.api.nvim_get_option("background")
      local new_bg = current_bg == "dark" and "light" or "dark"
      vscode.load(new_bg)
    end)
	end,
}
