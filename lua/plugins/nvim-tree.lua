--vim.g.nvim_tree_indent_markers = 1
--vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_hightlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require('nvim-tree').setup({
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  auto_reload_on_write = true,
  open_on_tab         = false,
  hijack_cursor       = true,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {'node_modules'}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
        custom_only = false,
        list = {
            { key = "zh", cb = tree_cb("toggle_dotfiles") },
            { key = "<C-u>", cb = tree_cb("dir_up") },
            { key = "<C-o>", cb = tree_cb("cd") }
        }
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
})
