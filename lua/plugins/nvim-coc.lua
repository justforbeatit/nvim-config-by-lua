--Use tab for trigger completion with characters ahead and navigate.
--Make <CR> auto-select the first completion item and notify coc.nvim to
Coc = {}

function Coc.setup(config)
    vim.g.coc_extensions = config.extensions
    vim.cmd([[
        inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" : "\<TAB>"
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
        inoremap <silent><expr> <c-space> coc#refresh()
        inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    ]])
end

return Coc
