return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
      local oil = require("oil")
      oil.setup()

      vim.keymap.set("n", "<Leader>o", "<Cmd>Oil<CR>")
    end,
  },
}
