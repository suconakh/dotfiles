let g:ale_disable_lsp = 1
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_linters_ignore = {'python': ['pylint', 'pyright']}
let g:ale_fixers = {'python': ['black', 'trim_whitespace', 'isort']}
" let g:ale_fix_on_save = 1
let g:ale_lint_delay = 0
