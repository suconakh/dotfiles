let g:nvim_home = get(g:, 'nvim_home', expand('~/.config/nvim/'))

exec 'source' g:nvim_home .'/plugs.vim'

let config_files = [
    \ 'config.vim',
    \ 'functions.vim',
    \ 'mappings.vim',
    \ 'plugin_settings/*.vim'
    \]

for pattern in config_files
    let home_pattern = g:nvim_home . pattern
    for file in glob(home_pattern, 1, 1)
        exec 'source' file
    endfor
endfor
