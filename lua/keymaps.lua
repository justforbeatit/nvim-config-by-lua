local keymap = vim.api.nvim_set_keymap
local options = { silent = true }

--for plugin nvim-tree
keymap('n', '<C-b>', ':NvimTreeToggle<CR>', options)

--for plugin markdown-preview
keymap('n', '<C-m>', '<Plug>MarkdownPreviewToggle', options)

--for plugin git-blame
keymap('n', '<C-g>', ':GitBlameToggle<CR>', options)

--for plugin barbar
keymap('n', '<C-h>', ':BufferPrevious<CR>', options)
keymap('n', '<C-l>', ':BufferNext<CR>', options)
keymap('n', '<C-x>', ':BufferClose<CR>', options)

--for plugin tagbar
keymap('n', '<Leader>t', ':TagbarToggle<CR>', options)

--for plugin nvim-telescope
keymap('n', '<Leader>f', ':lua require("telescope.builtin").find_files()<CR>', options)
keymap('n', '<Leader>s', ':lua require("telescope.builtin").live_grep()<CR>', options)
keymap('n', '<Leader>b', ':lua require("telescope.builtin").file_browser()<CR>', options)

--for plugin coc
keymap('n', '<Leader>r', ':CocRestart<CR>', options)
keymap('n', 'gd', '<Plug>(coc-definition)', options)
keymap('n', 'gy', '<Plug>(coc-type-definition)', options)
keymap('n', 'gi', '<Plug>(coc-implementation)', options)
keymap('n', 'gr', '<Plug>(coc-references)', options)
keymap('n', 'rn', '<Plug>(coc-rename)', options)
keymap('n', '<C-y>', '<Plug>(coc-translator-p)', { noremap = false })


