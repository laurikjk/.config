
return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
      local nvim_tree = require("nvim-tree")
      nvim_tree.setup()
      vim.keymap.set("n", "<leader>a", "<Cmd>NvimTreeToggle<CR>")
    end,
  },
}
