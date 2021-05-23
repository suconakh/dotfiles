" let g:coc_global_extensions = [
" \   'coc-pairs',
" \   'coc-json',
" \   'coc-pyright',
" \   'coc-explorer'
" \ ]

autocmd User CocDiagnosticChange,CocGitStatusChange
    \ call CocActionAsync('runCommand', 'explorer.doAction', 'closest', ['refresh'])

" File explorer

lua << EOF

  require('which-key').register({
    e = {
      "<cmd>CocCommand explorer<cr>",
      "file explorer"
    }
    
  }, {prefix = "<leader>", silent = true})

EOF
