return {
  {
    -- More info:
    -- https://github.com/imbue-ai/jupyter_ascending.vim
    -- https://medium.com/@ilia.ozhmegov/edit-jupyter-notebook-from-your-favorite-text-editor-dd48c5451d83
    'untitled-ai/jupyter_ascending.vim',
      config = function()
        -- Remove original keybindings
        vim.api.nvim_del_keymap('n', '<space><space>x')
        vim.api.nvim_del_keymap('n', '<space><space>X')
        vim.api.nvim_del_keymap('n', '<space><space>r')

        -- Remap keybindings for Jupyter Ascending
        vim.keymap.set('n', '<leader>e', '<Plug>JupyterExecute', { desc = "Execute cell" })
        vim.keymap.set('n', '<leader>E', '<Plug>JupyterExecuteAll', { desc = "Execute all cells" })
        vim.keymap.set('n', '<leader>R', '<Plug>JupyterRestart', { desc = "Restart kernel" })
      end
  }
}
