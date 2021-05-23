function! TabIsEmpty()
    return winnr('$') == 1 && len(expand('%')) == 0 && line2byte(line('$') + 1) <= 2
endfunction

function! OpenConfig()
    if TabIsEmpty() == 0
        execute 'tab new'
    endif
    execute 'e ~/.config/nvim/config.vim'
    execute 'tcd ~/.config/nvim/'
    execute 'CocCommand explorer ~/.config/nvim/'
endfunction
