-- Leader
vim.g.mapleader = " "

-- Language
vim.cmd("set langmenu=en")
vim.cmd("language en_US")

-- Line numbering
vim.opt.relativenumber = true
vim.opt.number = true

-- Indentation and tabs
local tabsize = 2

vim.opt.tabstop = tabsize       -- Number of spaces that a <Tab> counts for
vim.opt.softtabstop = tabsize   -- Number of spaces that a <Tab> counts for while editing
vim.opt.shiftwidth = tabsize    -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.smartindent = true      -- Smart auto-indenting for new lines
vim.opt.autoindent = true       -- Copy indent from the current line when starting a new line

-- Search
vim.opt.ignorecase = true -- Default to case insensitive search
vim.opt.smartcase = true  -- If uppercase letter in search then use case sensitive search

-- Keymaps

-- Open the diagnostic float
vim.keymap.set("n", "<leader>co", function()
  vim.diagnostic.open_float()
end, { desc = "Open LSP diagnostics" })

-- Copy all diagnostics on the current line to the system clipboard
vim.keymap.set("n", "<leader>cc", function()
  local bufnr = 0
  local row = vim.api.nvim_win_get_cursor(0)[1] - 1
  local diags = vim.diagnostic.get(bufnr, { lnum = row })

  if #diags == 0 then
    print("No diagnostics on this line")
    return
  end

  local msgs = {}
  for _, d in ipairs(diags) do
    table.insert(msgs, d.message)
  end

  local full_text = table.concat(msgs, "\n")

  vim.fn.setreg('+', full_text)

  print("Copied diagnostics:\n" .. full_text)
end, { desc = "Copy all diagnostics on this line to system clipboard" })

