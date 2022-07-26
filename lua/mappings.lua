
-- Set leader to space
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<TAB>", ":bn<CR>")
vim.keymap.set("n", "<S-TAB>", ":bp<CR>")

-- I am stupid, I often use <S-Up> instead of <Up>
vim.keymap.set("v", "<S-Up>", "<Up>")
vim.keymap.set("v", "<S-Down>", "<Down>")

-- Window resize
vim.keymap.set("n", "g<Down>", ":res -10<CR>")
vim.keymap.set("n", "g<Up>", ":res +10<CR>")
vim.keymap.set("n", "g<Left>", ":vertical res +10<CR>")
vim.keymap.set("n", "g<Right>", ":vertical res -10<CR>")

-- Code management
vim.keymap.set("x", "gc", ":call nerdcommenter#Comment('x', 'toggle')<CR>")

-- COC
vim.keymap.set("n", "<F12>", ":call CocAction('jumpDefinition', 'e')<CR>")
vim.cmd("inoremap <silent><expr> <c-space> coc#refresh()")
vim.keymap.set("n", "gr", "<Plug>(coc-references)")
vim.keymap.set("n", "K", ":call ShowDocumentation()<CR>")

-- Telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<A-f>", "<cmd>Telescope treesitter<CR>")
vim.keymap.set("n", "<leader>s", "<cmd>Telescope treesitter<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>r", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>Telescope command_history<CR>")

-- Terminal
vim.keymap.set("n", "<c-t>", '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>')
vim.keymap.set("n", "<c-f>", '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>')
vim.keymap.set("n", "<c-b>", '<Cmd>term<CR>')
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-N>")
vim.keymap.set("t", "<C-w><UP>", '<C-\\><C-N><C-w><UP>')
vim.keymap.set("t", "<C-w><Down>", '<C-\\><C-N><C-w><Down>')
vim.cmd('inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>')
vim.cmd('autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>')

-- NvimTree
vim.keymap.set("n", "<leader><F12>", ":NvimTreeToggle<CR>")

