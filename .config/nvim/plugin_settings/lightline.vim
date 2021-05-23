let g:lightline = {
\   'colorscheme': 'Tomorrow_Night',
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
