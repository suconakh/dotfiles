let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = ['debugpy']

" nnoremap <silent> <leader>m :MaximizerToggle!<CR>
" nnoremap <leader>dd :call vimspector#Launch()<CR>
" nnoremap <leader>de :call vimspector#Reset()<CR>
" nnoremap <leader>dc :call vimspector#Continue()<CR>
" nnoremap <leader>dr <Plug>VimspectorRestart
" nnoremap <leader>db <Plug>VimspectorToggleBreakpoint
" nnoremap <leader>drc <Plug>VimspectorRunToCursor

lua << EOF

  require('which-key').register({
    m = {
      "<cmd>MaximizerToggle!<cr>", 
      "maximize split"
    },
    d = {
      name = "[debugger]",
      d = {
        "<cmd>call vimspector#Launch()<cr>",
        "launch debugger"
      },
      e = {
        "<cmd>call vimspector#Reset()<cr>",
        "reset debugger"
      },
      c = {
        "<cmd>call vimspector#Continue()<cr>",
        "continue",
      },
      r = {
        "<plug>VimspectorRestart",
        "restart debugger",
      },
      b = {
        "<plug>VimspectorToggleBreakpoint",
        "toggle breakpoint",
      },
      ["."] = {
        "<plug>VimspectorRunRoCursor",
        "run to cursor",
      },
    }


  }, {prefix = "<leader>", silent = true})

EOF
