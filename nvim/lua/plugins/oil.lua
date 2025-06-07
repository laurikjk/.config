return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
      local oil = require("oil")

      oil.setup()

      local desc = "Open Oil"

      -- :Oil to open as a side bar
      vim.api.nvim_create_user_command("Oil", function()
        require("oil").open()
      end, { nargs = 0, desc = desc })

      vim.keymap.set("n", "<Leader>o", "<Cmd>Oil<CR>", { desc = desc })
    end,
  },
}
