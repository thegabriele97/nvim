
lua require('settings')
lua require('plugins')
lua require('colors')
lua require('mappings')

" set ignorecase   "case insensitive for nvim commands
" set showmatch    "matches brackets when cursor is on a bracket
" set nohlsearch   "remove highlight search
" set tabstop=4    "number of columns of a tab
" set shiftwidth=4 "When indenting with '>', use 4 spaces width
" set expandtab    "On pressing tab, insert 4 spaces
" set relativenumber
" set number
" set nowrap
" set mouse=a

" call plug#begin()
" " Plugin Section
" Plug 'glepnir/dashboard-nvim'
" Plug 'dracula/vim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'akinsho/bufferline.nvim'
" Plug 'nvim-lualine/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'github/copilot.vim'
" Plug 'sainnhe/edge'
" " Plug 'gelguy/wilder.nvim'
" " Plug 'ryanoasis/vim-devicons'
" " Plug 'SirVer/ultisnips'
" " Plug 'honza/vim-snippets'
" " Plug 'scrooloose/nerdtree'
" Plug 'preservim/nerdcommenter'
" " Plug 'mhinz/vim-startify'
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " CocInstall coc-json coc-clangd coc-jedi coc-vimlsp coc-html coc-html-css-support coc-tsserver
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" Plug 'psliwka/vim-smoothie'
" Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
" Plug 'rmagatti/auto-session'
" Plug 'rmagatti/session-lens'
" call plug#end()

" color schemes
" if (has("termguicolors"))
" set termguicolors
" endif
" syntax enable
" colorscheme evening
" colorscheme dracula
" colorscheme tokyonight


"require'nvim-treesitter.configs'.setup {
"	auto_install = false,
"	highlight = {
"		enable = true,              
"	},
"	indent = {
"		enable = true,
"	},
"	ensure_installed = {
"		"html",
"		"json",
"		"c",
"		"cpp",
"		"python",
"		"lua",
"		"javascript",
"		"java"
"	},
"}

:lua << END
--require('lualine').setup{
--    options = {
--        theme = 'tokyonight',
--        icons_enabled = true,
--        component_separators = { left = '', right = ''},
--        section_separators = { left = '', right = ''},
--        -- disabled_filetypes = { 'packer', 'NvimTree' },
--        globalstatus = true, -- global so it is not multiplied for each panel
--    },
--    sections = {
--        lualine_a = {
--            'mode'
--        },
--        lualine_b = {'branch', 'diff', 
--            {
--                    'diagnostics',
--                    always_visible = true,
--            }
--        },
--        lualine_c = {
--            {
--                'filename',
--                file_status = true,      -- Displays file status (readonly status, modified status)
--                path = 3,                -- 0: Just the filename
--                                         -- 1: Relative path
--                                         -- 2: Absolute path
--                                         -- 3: Absolute path, with tilde as the home directory
--
--                shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
--                                         -- for other components. (terrible name, any suggestions?)
--                symbols = {
--                    modified = ' ●',      -- Text to show when the file is modified.
--                    readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
--                    unnamed = '[No Name]', -- Text to show for unnamed buffers.
--                }
--            }
--        },
--        lualine_x = {'encoding', 'fileformat', 'filetype'},
--        lualine_y = {'progress'},
--        lualine_z = {'location'}
--    }
--}
-- require('bufferline').setup{
--     options = {
--         numbers = "buffer_id",
--         separator_style = "slant",
--     },
-- }
--require('nvim-tree').setup{
--    update_cwd = false,
--    update_focused_file = {
--      enable = false,
--      update_cwd = false,
--    },
--    view = {
--        side = 'right'
--    },
--    filters = {
--        dotfiles = true
--    }
--}

--require("indent_blankline").setup {
--    -- for example, context is off by default, use this to turn it on
--    show_current_context = true,
--    show_current_context_start = true,
--}

--require('toggleterm').setup {
--  shade_terminals = true
--}

--require('auto-session').setup {
--    auto_session_enable_last_session = false,
--    auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
--    auto_session_enabled = true,
--    auto_save_enabled = true,
--    auto_restore_enabled = false,
--    auto_session_suppress_dirs = nil,
--    auto_session_use_git_branch = nil,
--    -- the configs below are lua only
--    bypass_session_save_file_types = nil
--}

--local home = os.getenv('HOME')
--local db = require('dashboard')
--db.custom_header = {
--   "                                   ",
--   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
--   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
--   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
--   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
--   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
--   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
--   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
--   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
--   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
--   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
--   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
--   "                                   "
--}
--
--db.custom_center = {
--    {icon = '  ', desc = 'Restore latest session                  ', shortcut = '-------', action = 'RestoreSession'},
--    {icon = '  ', desc = 'Recently opened files                   ', shortcut = 'SPC r  ', action = 'Telescope oldfiles' },
--    {icon = '  ', desc = 'Find  File                              ', shortcut = 'SPC f  ', action = 'Telescope find_files'},
--    {icon = '  ', desc = 'File Browser                            ', shortcut = 'SFT F12', action = 'NvimTreeToggle'},
--    {icon = '  ', desc = 'Neovim Settings                         ', shortcut = '-------', action = 'e ' .. home .. '/.config/nvim/init.vim'},
--    -- {icon = '  ', desc = 'Find  word                              ', shortcut = 'SPC f w', action = 'Telescope live_grep'},
--}

END

" let g:tokyonight_italic_keywords = 1
" let g:NERDCreateDefaultMappings = 1
" let g:NERDSpaceDelims = 1
" let mapleader=" "

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=300

" nmap <TAB>    :bn<CR>
" nmap <S-TAB>  :bp<CR>
" vmap <S-Up>   <Up>
" vmap <S-Down> <Down>
" nmap g<Down>   :res -10<CR>
" nmap g<Up>     :res +10<CR>
" nmap g<Left>   :vertical res +10<CR>
" nmap g<Right>  :vertical res -10<CR>
" " nmap gc       :call nerdcommenter#Comment('x', 'toggle')<CR>
" xnoremap gc   :call nerdcommenter#Comment('x', 'toggle')<CR>
" nmap <leader><F12>    :NvimTreeToggle<CR>
" nmap <F12>    :call CocAction('jumpDefinition', 'e')<CR> " jump to definition in a new buffer. use 'vsplit' instead of 'e'
" inoremap <silent><expr> <c-space> coc#refresh()
" nmap <silent> gr <Plug>(coc-references)
" nmap <leader>f <cmd>Telescope find_files<CR>
" nmap <A-f> <cmd>Telescope treesitter<CR>
" nmap <leader>b <cmd>Telescope buffers<CR>
" nmap <leader>l <cmd>Telescope buffers<CR>
" nmap <leader>r <cmd>Telescope oldfiles<CR>
" nnoremap <silent> K :call ShowDocumentation()<CR> " Use K to show documentation in preview window.

" set
" autocmd TermEnter term://*toggleterm#*
      " \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
" nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm directon=horizontal"<CR>
" nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
" nnoremap <silent><c-f> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
" nnoremap <silent><c-b> <Cmd>term<CR>
" inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
" tnoremap <silent><ESC><ESC> <C-\><C-N>
" tnoremap <silent><C-w><UP> <C-\><C-N><C-w><UP>
" tnoremap <silent><C-w><Down> <C-\><C-N><C-w><Down>
" tnoremap <silent><C-f> <C-t>

function! IsBufferWindow()
    let wt = win_gettype()
    " echom "wt: " . wt
    if wt ==? ""
        return 1
    else
        return 0
    endif
endfunction

function! ShowDocumentation()
    " echom "len" . len(expand("%"))
    if IsBufferWindow() && CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    endif
endfunction

augroup hover
	autocmd!
    " autocmd WinEnter * call CheckWindowType()
    " autocmd CursorHold * silent!
        " \| call ShowDocumentation()
    " \| 
    autocmd CursorHoldI * silent!
        \| if IsBufferWindow() 
        \|    call CocActionAsync('showSignatureHelp')
        \| endif
augroup end



