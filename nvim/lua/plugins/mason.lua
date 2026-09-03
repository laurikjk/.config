return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "clangd",
        "pyright",
        "rust_analyzer",
        "glsl_analyzer",
        "svelte",
      },
      -- Keep manual lspconfig setup as the single source of truth.
      automatic_enable = false,
    },
  },
}
