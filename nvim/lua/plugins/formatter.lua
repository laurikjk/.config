-- Only uses Prettier if a local version exists in the project.
local function prettier()
    local project_prettier = vim.fn.getcwd() .. '/node_modules/.bin/prettier'
    local prettier_path = vim.fn.filereadable(project_prettier) == 1 and project_prettier or nil

    if not prettier_path then
      return
    end

    local filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'svelte' }

    local filetypesetups = {}
    for _, filetype in ipairs(filetypes) do
      filetypesetups[filetype] = {
      function()
        return {
          exe = prettier_path,
          args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
          stdin = true
        }
      end
      }
    end


    require('formatter').setup{ filetype = filetypesetups }

    -- Auto format on save
    vim.api.nvim_exec([[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.svelte FormatWrite
      augroup END
    ]], true)
end

return {
  'mhartington/formatter.nvim',
  config = function()
    prettier()
  end
}
