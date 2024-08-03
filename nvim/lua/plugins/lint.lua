return {
  'mhartington/formatter.nvim',  -- Plugin for formatting
  config = function()
    -- Check if local Prettier exists
    local function has_local_prettier()
      local project_prettier = vim.fn.getcwd() .. '/node_modules/.bin/prettier'
      return vim.fn.filereadable(project_prettier) == 1 and project_prettier or nil
    end

    -- Setup formatter.nvim if local Prettier exists
    local prettier_path = has_local_prettier()
    if prettier_path then
      require('formatter').setup{
        filetype = {
          javascript = {
            function()
              return {
                exe = prettier_path,
                args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                stdin = true
              }
            end
          },
          javascriptreact = {
            function()
              return {
                exe = prettier_path,
                args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                stdin = true
              }
            end
          },
          typescript = {
            function()
              return {
                exe = prettier_path,
                args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                stdin = true
              }
            end
          },
          typescriptreact = {
            function()
              return {
                exe = prettier_path,
                args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                stdin = true
              }
            end
          },
          -- Add other filetypes as needed
        }
      }

      -- Auto format on save if local Prettier exists
      vim.api.nvim_exec([[
        augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx FormatWrite
        augroup END
      ]], true)
    end
  end
}

