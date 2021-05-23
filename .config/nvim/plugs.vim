call plug#begin('~/.config/nvim/plugged/')

" Status line 
Plug 'itchyny/lightline.vim' 
" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
" Python autoindent
Plug 'Vimjas/vim-python-pep8-indent'          
" Enclosing words with brackets/quotes etc
Plug 'machakann/vim-sandwich'                 
" Window resize mode
Plug 'simeji/winresizer'       
" Jupyter notebook
Plug 'jupyter-vim/jupyter-vim'
" Wiki
Plug 'vimwiki/vimwiki'
" Comment line with gcc
Plug 'tpope/vim-commentary'
" Restore vim sessions (tmux)
Plug 'tpope/vim-obsession'
" Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
" Fuzzy finder 
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'    
" Themes
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim'
Plug 'owozsh/amora'
Plug 'dylanaraps/wal.vim'
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'joshdick/onedark.vim'
" Themes with treesitter support
Plug 'tomasiser/vim-code-dark'
" Plug 'folke/tokyonight.nvim'
Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'sainnhe/sonokai'
Plug 'doums/darcula'
" Plug 'marko-cerovac/material.nvim'
Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
" File explorer
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
" Highlight colors
Plug 'ap/vim-css-color'
" LSP
Plug 'neovim/nvim-lspconfig'                  
" LSP & completion
Plug 'neoclide/coc.nvim', {'branch':'release'}  
" Python formatter
Plug 'psf/black', {'branch':'stable'}           
" Linting & formatting 
Plug 'dense-analysis/ale'                     
" ??? 
Plug 'liuchengxu/vista.vim'                   
" Debugger
Plug 'puremourning/vimspector'
" Maximize window
Plug 'szw/vim-maximizer'
" Hotkey popup
Plug 'folke/which-key.nvim'

call plug#end()
