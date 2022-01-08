--Use tab for trigger completion with characters ahead and navigate.
--Make <CR> auto-select the first completion item and notify coc.nvim to

Coc = {}

--[[
        function! s:check_back_space() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction
        inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ check_back_space() ? "\<TAB>" :
            \ coc#refresh()
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
        inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

--]]--


function Coc.setup(config)
    vim.g.coc_extensions = config.extensions
    vim.cmd([[
        inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    ]])
end

return Coc
