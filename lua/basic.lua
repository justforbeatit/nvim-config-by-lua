--[[
    Nvim config of base options
--]]

vim.g.mapleader = ';'
vim.g.nobackup = true
vim.cmd([[
    filetype on
    filetype plugin on
    filetype indent on
    let &t_ut=''
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    autocmd FileType vue set shiftwidth=2
    autocmd FileType typescript set shiftwidth=2
    autocmd FileType javascript set shiftwidth=2
    autocmd FileType php set shiftwidth=4
]])

local function define_options(options)
    for _, val in pairs(options) do
        vim.o[_] = val
    end
end

define_options({
    termguicolors = true,
    number = true,
    smartcase = true,
    wrap = true,
    ic = true,
    autochdir = true,
    autoindent = true,
    --smartindent = true,
    termguicolors = true,
    expandtab = true,
    showcmd = true,
    showmatch = true,
    ruler = true,
    lazyredraw = true,
    visualbell = true,
    hlsearch = true,
    incsearch = true,
    list = true,
    wildmenu = true,
    relativenumber = true,
    hidden = true,
    clipboard = 'unnamedplus',
    encoding = 'utf-8',
    fileformats = 'unix',
    mouse = 'nv',
    shiftwidth = 2,
    ts = 2,
    history = 800,
    scrolloff = 5,
    wildmode = 'full',
    foldmethod = 'marker',
    foldlevelstart = 99,
    laststatus = 2,
    signcolumn = 'number',
    showtabline = 1,
    --coc recommend settings
    updatetime = 100,
    cmdheight = 2
})
