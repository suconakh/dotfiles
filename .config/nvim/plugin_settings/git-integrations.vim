let g:signify_sign_add               = '+'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_delete            = '_'
let g:signify_sign_change            = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

highlight SignifySignAdd                  ctermbg=green  guifg=lime   guibg=none
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=red    guibg=none
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=yellow guibg=none

highlight SignifyLineAdd                  ctermbg=2      guibg=#1d3021
highlight SignifyLineChange               ctermbg=3      guibg=#2e3021

" -- nnoremap <leader>GJ <Plug>(signify-next-hunk)
" -- nnoremap <leader>GK <Plug>(signify-prev-hunk)
" -- nnoremap <silent> <leader>GB :GBrowse<CR>
" -- nnoremap <silent> <leader>GV :GV<CR>
" -- nnoremap <silent> <leader>GD :SignifyDiff<CR>
" -- nnoremap <silent> <leader>GH :SignifyToggleHighlight<CR>

lua << EOF
  require("which-key").register({
    G = {
      name = "[git]",
      B = {
        "<cmd>GBrowse<cr>",
        "browse file on github repo",
      },
      V = {
        "<cmd>GV<cr>",
        "browse commits",
      },
      D = {
        "<cmd>SignifyDiff<cr>",
        "diff",
      },
      H = {
        "<cmd>SignifyToggleHighlight<cr>",
        "toggle hunk highlight",
      },
      J = {
        "<plug>(signify-next-hunk)",
        "next hunk",
      },
      K = {
        "<plug>(signify-prev-hunk)",
        "prev hunk",
      },      
    }
  }, {prefix = "<leader>", silent = true})

EOF
