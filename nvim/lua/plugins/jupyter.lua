return {
  {
    -- More info:
    -- https://github.com/imbue-ai/jupyter_ascending.vim
    -- https://medium.com/@ilia.ozhmegov/edit-jupyter-notebook-from-your-favorite-text-editor-dd48c5451d83
    'untitled-ai/jupyter_ascending.vim',
      config = function()
        -- Remove original keybindings
        vim.api.nvim_del_keymap('n', '<space><space>x') -- Remove original execute cell mapping
        vim.api.nvim_del_keymap('n', '<space><space>X') -- Remove original execute all cells mapping
        vim.api.nvim_del_keymap('n', '<space><space>r') -- Remove original restart kernel mapping

        -- Remap keybindings for Jupyter Ascending
        vim.keymap.set('n', '<leader>e', '<Plug>JupyterExecute', { desc = "Execute cell" }) -- Remap <space><space>x to <leader>e
        vim.keymap.set('n', '<leader>E', '<Plug>JupyterExecuteAll', { desc = "Execute all cells" }) -- Remap <space><space>X to <leader>E
        vim.keymap.set('n', '<leader>r', '<Plug>JupyterRestart', { desc = "Restart kernel" }) -- Remap <space><space>r to <leader>r
      end
  }
}
