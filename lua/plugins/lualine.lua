
require('lualine').setup{
	options = {
		-- theme = 'tokyonight',
		icons_enabled = true,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		-- disabled_filetypes = { 'packer', 'NvimTree' },
		globalstatus = true, -- global so it is not multiplied for each panel
	},
	sections = {
		lualine_a = {
			'mode'
		},
		lualine_b = {'branch', 'diff',
			{
					'diagnostics',
					always_visible = true,
			}
		},
		lualine_c = {
			{
				'filename',
				file_status = true,      -- Displays file status (readonly status, modified status)
				path = 3,                -- 0: Just the filename
										 -- 1: Relative path
										 -- 2: Absolute path
										 -- 3: Absolute path, with tilde as the home directory

				shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
										 -- for other components. (terrible name, any suggestions?)
				symbols = {
					modified = ' ●',      -- Text to show when the file is modified.
					readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
					unnamed = '[No Name]', -- Text to show for unnamed buffers.
				}
			}
		},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
}

