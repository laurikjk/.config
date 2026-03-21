return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      word_diff = false,
    },
    keys = {
      {
        "<leader>gd",
        function()
          if vim.wo.diff then
            vim.cmd("diffoff!")
          else
            require("gitsigns").diffthis()
          end
        end,
        desc = "Toggle git diff for current file",
      },
      {
        "<leader>gp",
        function()
          require("gitsigns").preview_hunk()
        end,
        desc = "Preview git hunk",
      },
      {
        "]c",
        function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            require("gitsigns").nav_hunk("next")
          end
        end,
        desc = "Next git hunk",
      },
      {
        "[c",
        function()
          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            require("gitsigns").nav_hunk("prev")
          end
        end,
        desc = "Prev git hunk",
      },
    },
  },
}
