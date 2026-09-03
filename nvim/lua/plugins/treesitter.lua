local parsers = {
  "glsl",
  "rust",
  "javascript",
  "typescript",
  "tsx",
  "html",
  "css",
  "svelte",
  "markdown",
  "markdown_inline",
}
local filetypes = { "glsl", "rust", "typescript", "typescriptreact", "typescript.tsx", "svelte", "markdown" }

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")

      ts.setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      ts.install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
        pattern = filetypes,
        callback = function(event)
          local max_filesize = 300 * 1024 -- 300 KB
          local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(event.buf))
          if ok and stats and stats.size > max_filesize then
            return
          end

          pcall(vim.treesitter.start, event.buf)
        end,
      })
    end,
  },
}
