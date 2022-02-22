Color = {}

function Color.material()
    vim.g.material_style = "Palenight"
    require('material').setup({
        contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
        borders = true, -- Enable borders between verticaly split windows

        disable = {
            background = true, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
        }
    })
    require('lualine').setup{
        options = {
            theme = 'material-nvim',
        }
    }
end

function Color.tokyonight()
    vim.g.tokyonight_style = "storm" -- or 'night'
    vim.g.tokyonight_italic_comments = false
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_lualine_bold = true
    require('lualine').setup {
      options = {
        theme = 'tokyonight'
      }
    }
end

function Color.setup(config)
    Color[config.color]()
    vim.cmd('colorscheme ' .. config.color)
    if config.transparent == true then
        vim.cmd([[
            highlight Normal guibg=NONE ctermbg=None
        ]])
    end
end

return Color
