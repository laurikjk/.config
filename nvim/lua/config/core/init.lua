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

