local PlugInsert = require("functions.PlugAnAl")

PlugInsert.begins()

-- Themes
PlugInsert('folke/tokyonight.nvim', 'tokyonight', {branch = 'main'})
PlugInsert('rebelot/kanagawa.nvim', 'kanagawa')
PlugInsert('dracula/vim', 'dracula')
PlugInsert('sainnhe/edge', 'edge')
PlugInsert('kyazdani42/nvim-web-devicons', 'web-devicons')

-- UI
PlugInsert('akinsho/bufferline.nvim', 'bufferline')
PlugInsert('nvim-lualine/lualine.nvim', 'lualine')
PlugInsert('kyazdani42/nvim-tree.lua', 'tree')
PlugInsert('lukas-reineke/indent-blankline.nvim', 'blankline')
PlugInsert('glepnir/dashboard-nvim', 'dashboard')
PlugInsert('psliwka/vim-smoothie', 'smoothie')

-- Treesitter (syntax highlighting)
PlugInsert('nvim-treesitter/nvim-treesitter', 'treesitter', {_do = ':TSUpdate'})
PlugInsert('p00f/nvim-ts-rainbow')

-- Autocomplete & Code Management
PlugInsert('neoclide/coc.nvim', 'coc', {branch = 'release'}) -- CocInstall coc-json coc-clangd coc-jedi coc-vimlsp coc-html coc-html-css-support coc-tsserver
PlugInsert('github/copilot.vim', 'copilot')
PlugInsert('preservim/nerdcommenter', 'nerdcommenter')

-- Fuzzy
PlugInsert('nvim-telescope/telescope.nvim', 'telescope', {tag = '0.1.0'})
PlugInsert('rmagatti/session-lens', 'session-lens')

-- Utils
PlugInsert('akinsho/toggleterm.nvim', 'toggleterm', {tag ='v2.*'})
PlugInsert('nvim-lua/plenary.nvim', 'plenary')
PlugInsert('rmagatti/auto-session', 'session')

-- plug_insert('gelguy/wilder.nvim'
-- plug_insert('ryanoasis/vim-devicons'
-- plug_insert('SirVer/ultisnips'
-- plug_insert('honza/vim-snippets'
-- plug_insert('scrooloose/nerdtree'
-- plug_insert('mhinz/vim-startify'

PlugInsert.ends()


-- vim.cmd("call plug#begin()")
--vim.cmd("Plug 'folke/tokyonight.nvim', { 'branch': 'main' }")
--vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }")

-- Themes
-- plug_insert('folke/tokyonight.nvim', 'tokyonight', {branch = 'main'})
-- plug_insert('rebelot/kanagawa.nvim', 'kanagawa')
-- plug_insert('dracula/vim', 'dracula')

-- -- Treesitter (syntax highlighting)
--
-- plug_insert('nvim-treesitter/nvim-treesitter', 'treesitter', {_do = ':TSUpdate'})
-- plug_insert('p00f/nvim-ts-rainbow')

-- plug_insert('glepnir/dashboard-nvim', 'dashboard')
-- plug_insert('neoclide/coc.nvim', 'coc', {branch = 'release'}) -- CocInstall coc-json coc-clangd coc-jedi coc-vimlsp coc-html coc-html-css-support coc-tsserver
-- plug_insert('nvim-telescope/telescope.nvim', 'telescope', {tag = '0.1.0'})
-- plug_insert('akinsho/toggleterm.nvim', 'toggleterm', {tag ='v2.*'})
-- plug_insert('akinsho/bufferline.nvim', 'bufferline')
-- plug_insert('nvim-lualine/lualine.nvim', 'lualine')
-- plug_insert('kyazdani42/nvim-web-devicons', 'web-devicons')
-- plug_insert('kyazdani42/nvim-tree.lua', 'tree')
-- plug_insert('lukas-reineke/indent-blankline.nvim', 'indent-blankline')
-- plug_insert('github/copilot.vim', 'copilot')
-- plug_insert('sainnhe/edge', 'edge')
-- -- plug_insert('gelguy/wilder.nvim'
-- -- plug_insert('ryanoasis/vim-devicons'
-- -- plug_insert('SirVer/ultisnips'
-- -- plug_insert('honza/vim-snippets'
-- -- plug_insert('scrooloose/nerdtree'
-- plug_insert('preservim/nerdcommenter', 'nerdcommenter')
-- -- plug_insert('mhinz/vim-startify'
-- plug_insert('nvim-lua/plenary.nvim', 'plenary')
-- plug_insert('psliwka/vim-smoothie', 'smoothie')
-- plug_insert('rmagatti/auto-session', 'auto-session')
-- plug_insert('rmagatti/session-lens', 'session-lens')

-- vim.cmd("call plug#end()")

-- for cp, fn in pairs(plug_loads) do
    -- -- print("[PLUGINS] " .. cp .. " plugin configuring ...")
    -- if fn() then
        -- -- print("[PLUGINS] " .. cp .. " plugin configured.")
    -- else
        -- -- print("[PLUGINS] " .. cp .. " plugin configuration failed.")
    -- end
-- end

