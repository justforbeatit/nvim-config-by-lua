--Plugins by vim-plug

Plugins = {}

function Plugins.setup(hook)
    vim.cmd([[
        call plug#begin('~/.config/nvim/plugged')
            Plug 'marko-cerovac/material.nvim'
            Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
            Plug 'nvim-lualine/lualine.nvim'
            Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
            Plug 'kyazdani42/nvim-web-devicons'
            Plug 'kyazdani42/nvim-tree.lua'
            Plug 'windwp/nvim-autopairs'
            Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': ['markdown']  }
            Plug 'f-person/git-blame.nvim'
            Plug 'StanAngeloff/php.vim'
            Plug 'voldikss/vim-floaterm'
            Plug 'romgrk/barbar.nvim'
            Plug 'preservim/tagbar'
            Plug 'neoclide/coc.nvim', {'branch': 'release'}
            Plug 'nvim-lua/plenary.nvim'
            Plug 'nvim-telescope/telescope.nvim'

        call plug#end()
    ]])
    hook(vim)
end

return Plugins
