
require('nvim-tree').setup{
    update_cwd = false,
    update_focused_file = {
      enable = false,
      update_cwd = false,
    },
    view = {
        side = 'right'
    },
    filters = {
        dotfiles = true
    }
}

