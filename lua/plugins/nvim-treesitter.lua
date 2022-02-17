Treesitter = {}

function Treesitter.setup(config) 
    require('nvim-treesitter.configs').setup({
        --ensure_installed = "maintained",
        ensure_installed = config.parsers,
        sync_install = false,
        highlight = {
            enable = true,
            disable = { 'php' }
        },
        --Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
        indent = {
            enable = true
        },
        additional_vim_regex_highlighting = false,
    })
end

return Treesitter
