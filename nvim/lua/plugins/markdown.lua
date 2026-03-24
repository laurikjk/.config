return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-mini/mini.nvim",
    },
    opts = {},
    config = function(_, opts)
      require("render-markdown").setup(opts)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function(event)
          vim.keymap.set("n", "<leader>md", function()
            require("render-markdown").buf_toggle()
          end, { buffer = event.buf, desc = "Toggle markdown render" })
        end,
      })
    end,
  },
}
