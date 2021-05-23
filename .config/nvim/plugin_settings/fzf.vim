" nnoremap <silent> <leader>ff :Files<cr>
" nnoremap <silent> <leader>fgg :GFiles<cr>
" nnoremap <silent> <leader>fg? :GFiles?<cr>
" nnoremap <silent> <leader>fb :Buffers<cr>
" nnoremap <silent> <leader>fl :Lines<cr>
" nnoremap <silent> <leader>f/ :BLines<cr>

lua << EOF

  require('which-key').register({
    f = {
      name = "[fuzzy]",
      f = {
        "<cmd>Files<cr>",
        "fuzzy files",
      },
      b = {
        "<cmd>Buffers<cr>",
        "fuzzy buffers",
      },
      l = {
        "<cmd>Lines<cr>",
        "fuzzy in files",
      },
      ["/"] = {
        "<cmd>BLines<cr>",
        "fuzzy buffer"
      },
      g = {
        name = "[fuzzy git]",
        g = {
          "<cmd>GFiles<cr>",
          "fuzzy git repo",
        },
        ["?"] = {
          "<cmd>GFiles?<cr>",
          "fuzzy git status",
        },
      },
    }
  }, {prefix = "<leader>", silent = true})

EOF
