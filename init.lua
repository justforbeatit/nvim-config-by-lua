require('basic')
require('keymaps')
require('plugins').setup(function() 
    require('nvim-autopairs').setup{}
    require('plugins.nvim-tree')
    require('plugins.nvim-treesitter').setup({
        parsers = {
            'vim',
            'lua',
            'javascript',
            'typescript',
            'tsx',
            'vue',
            'html',
            'css',
            'scss',
            'json',
            'comment',
            'http'
        }
    })
    require('plugins.nvim-coc').setup({
        extensions = {
            'coc-tsserver',
            'coc-html',
            'coc-css',
            'coc-json',
            'coc-highlight',
            'coc-prettier',
            'coc-snippets',
            'coc-tabnine',
            'yaegassy@coc-volar',
            'yaegassy@coc-intelephense'
        }
    })
    require('plugins.color').setup({
        --color = 'material', transparent = true
        color = 'tokyonight', transparent = true
    })
    require('plugins.nvim-gitblame')
    require('plugins.nvim-floaterm')
    require('plugins.nvim-barbar')
end)
