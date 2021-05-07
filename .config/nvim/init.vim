" Vim variables

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set exrc
set guicursor=a:blinkon100
set nu
set relativenumber
set nohlsearch
set hidden
set nowrap
set nobackup
set noswapfile
set undodir=~/.vim/undodir
set undofile
set splitbelow
set splitright
set incsearch
set scrolloff=15
set signcolumn=yes
set colorcolumn=90
set noshowmode
set termguicolors
set exrc
set secure

lua << EOF
-- Packages

vim.cmd 'packadd paq-nvim'                   -- Load package
local paq = require'paq-nvim'.paq            -- Import module and bind `paq` function
paq {'savq/paq-nvim', opt=true}              -- Let Paq manage itself

-- Visual 
paq 'itchyny/lightline.vim'                  -- Status line
paq 'numirias/semshi'                        -- Python syntax highlighter
paq 'kien/rainbow_parentheses.vim'           -- Bracket pairs

-- Themes
paq 'morhetz/gruvbox'
paq 'dracula/vim'
paq 'ayu-theme/ayu-vim'
paq 'owozsh/amora'
paq 'dylanaraps/wal.vim'
paq 'joshdick/onedark.vim'
paq 'junegunn/seoul256.vim'

-- Utilities
paq 'tpope/vim-commentary'                   -- Comment line with gcc
--paq 'jiangmiao/auto-pairs'                   -- Bracket pairs
paq 'junegunn/fzf.vim'                       -- Fuzzy finder
paq 'Vimjas/vim-python-pep8-indent'          -- Python autoindent
paq 'machakann/vim-sandwich'                 -- Enclosing words with brackets/quotes etc
paq 'tpope/vim-fugitive'                     -- Git integration
paq 'simeji/winresizer'                      -- Window resize mode
paq 'jupyter-vim/jupyter-vim'

-- Linting and LSP
paq 'neovim/nvim-lspconfig'                  -- LSP
paq {'neoclide/coc.nvim', branch='release'}  -- LSP & completion
paq {'psf/black', branch='stable'}           -- Python formatter
paq 'dense-analysis/ale'                     -- Linting & formatting
paq 'liuchengxu/vista.vim'                   -- ??? 

EOF

" Plugin configs
let ayucolor="dark"

let g:ale_disable_lsp = 1
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_linters_ignore = {'python': ['pylint', 'pyright']}
let g:ale_fixers = {'python': ['black', 'trim_whitespace', 'isort']}
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 0

let g:rainbow_active = 1
let g:coc_global_extensions = [
\   'coc-pairs',
\ ]

let g:lightline = {
\   'colorscheme': 'gruvbox',
\   'active': {
\     'left': [ 
\        [ 'mode', 'paste', 'gitbranch' ],
\        [ 'readonly', 'filename', 'modified', 'method' ] 
\     ]
\   },
\   'component_function': {
\     'gitbranch': 'FugitiveHead',
\     'method': 'NearestMethodOrFunction'
\   },
\ }

autocmd User CocDiagnosticChange,CocGitStatusChange
    \ call CocActionAsync('runCommand', 'explorer.doAction', 'closest', ['refresh'])

colorscheme gruvbox

function SemshiColors() abort
    " Define BadWhitespace before using in a match
    highlight BadWhitespace ctermbg=red guibg=darkred

    " Highlight spelling mistakes in red
    highlight SpellBad cterm=underline ctermfg=red guifg=red

    " Do not use separate background color in sign column
    highlight SignColumn guibg=bg
    highlight SignColumn ctermbg=bg

    " Use underlined, bold, green for current tag
    highlight TagbarHighlight guifg=#b8bb26
    highlight TagbarHighlight gui=bold,underline

    " Highlight search results in bold green
    highlight Search guibg=guibg guifg=#b8bb26 gui=bold,underline cterm=bold,underline

    " Try to use more subdued colors in vimdiff mode
    highlight DiffAdd cterm=bold ctermfg=142 ctermbg=235 gui=NONE guifg=#b8bb26 guibg=#3c3c25
    highlight DiffChange cterm=bold ctermfg=108 ctermbg=235 gui=NONE guifg=#8ec07c guibg=#383228
    highlight DiffText cterm=NONE ctermfg=214 ctermbg=235 gui=NONE guifg=#fabd2f guibg=#483D28
    highlight DiffDelete cterm=bold ctermfg=167 ctermbg=235 gui=NONE guifg=#fb4934 guibg=#372827

    " Use Gruvbox colors for python semshi semantic highlighter
    hi semshiGlobal          ctermfg=167 guifg=#fb4934
    hi semshiImported        ctermfg=214 guifg=#83a598 
    hi semshiParameter       ctermfg=142  guifg=#98971a
    hi semshiParameterUnused ctermfg=106 guifg=#665c54
    hi semshiBuiltin         ctermfg=208 guifg=#8ec07c
    hi semshiAttribute       ctermfg=108  guifg=fg
    hi semshiSelf            ctermfg=109 guifg=#85a598
    hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
endfunction

augroup Colors
    autocmd!
    autocmd ColorScheme * call SemshiColors()
augroup END

" Bindings

let mapleader = "\<Space>"

" File explorer
nnoremap <silent> <leader>e :CocCommand explorer<CR>

" Terminal
nnoremap <silent> <A-`> :sp \| resize 10 \| term<CR>i

" Quit terminal mode
tnoremap <silent> <Esc> <C-\><C-n> \| :wincmd k<CR>

" Move lines
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==

" Switch between splits
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

" Center cursor
" nnoremap j jzz
" nnoremap k kzz
