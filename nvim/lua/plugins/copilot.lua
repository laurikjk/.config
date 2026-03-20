return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",   -- trigger login after first sync
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false }, -- handled by cmp
      panel      = { enabled = false },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function(_, opts)
      require("copilot_cmp").setup(opts)
    end,
  },
}

