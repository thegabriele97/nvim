
-- Disable search highlight
vim.opt.hlsearch = false

--Mouse support active. Alt click
vim.opt.mouse = "a"

-- Wrap disabled
vim.opt.wrap = false

-- Line numbers (relative + current absolute)
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.showmatch = true

-- Control searching. Ignore case during search, except if it includes a capital letter
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indenting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = false -- Left as false for now
vim.opt.autoindent = true -- left as true for now

-- update time for plugins (speed when they act)
vim.opt.updatetime = 300
