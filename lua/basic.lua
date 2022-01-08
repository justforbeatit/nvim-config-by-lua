--[[
    Nvim config of base options
--]]

vim.g.mapleader = ';'
vim.g.nobackup = true
vim.g.nowritebackup = true

local function define_options(options)
    for _, val in pairs(options) do
        vim.o[_] = val
    end
end

define_options({
    termguicolors = true,
    number = true,
    ai = true,
    smartindent = true,
    smartcase = true,
    wrap = true,
    ic = true,
    autochdir = true,
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
    tabstop = 4,
    shiftwidth = 4,
    ts = 4,
    history = 800,
    scrolloff = 5,
    wildmode = 'full',
    foldmethod = 'marker',
    foldlevelstart = 99,
    laststatus = 2,
    signcolumn = 'number',
    showtabline = 1,
    --coc recommend settings
    updatetime = 300,
    cmdheight = 2
})
