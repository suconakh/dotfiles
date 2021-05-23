lua << EOF

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        -- custom_captures = {
        --     ["foo.bar"] = "Indentifier",
        -- },
    },
    indent = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000,
        -- colors = {
        --     "#ff0000",
        --     "#00ff00",
        --     "#0000ff",
        --     "#ffff00",
        --     "#00ffff",
        --     "#ffffff",
        --     "#000000",
        -- }
    },
}

EOF

highlight SignifySignAdd                  ctermbg=black  guifg=lime   guibg=none
highlight SignifySignDelete ctermfg=black ctermbg=black    guifg=red    guibg=none
highlight SignifySignChange ctermfg=black ctermbg=black guifg=yellow guibg=none

highlight SignifyLineAdd                  ctermbg=2      guibg=#1d3021
highlight SignifyLineChange               ctermbg=3      guibg=#2e3021
