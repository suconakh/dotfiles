let mapleader = "\<Space>"

lua << EOF

local wk = require("which-key")
wk.setup {
  icons = {
    separator = "",
    breadcrumb = "",
    group = ""
  },
  layout = {
    height = {min = 5, max = 25},
    width = {min = 20, max = 50},
    spacing = 5,
  },
  hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ", "|.*"},
}

local leader_maps = {
  ["-"] = {"<cmd>sp<cr>", "horizontal split"},
  ["\\"] = {"<cmd>vs<cr>", "vertical split"},
  h = {"<cmd>wincmd h<cr>", "move to split left"},
  j = {"<cmd>wincmd j<cr>", "move to split bottom"},
  k = {"<cmd>wincmd k<cr>", "move to split up"},
  l = {"<cmd>wincmd l<cr>", "move to split right"},

  ["1"] = {"1gt", "tab 1"},
  ["2"] = {"2gt", "which_key_ignore"},
  ["3"] = {"3gt", "which_key_ignore"},
  ["4"] = {"4gt", "which_key_ignore"},
  ["5"] = {"5gt", "which_key_ignore"},
  ["6"] = {"6gt", "which_key_ignore"},
  ["7"] = {"7gt", "which_key_ignore"},
  ["8"] = {"8gt", "which_key_ignore"},
  ["9"] = {"9gt", "tab 9"},
  ["0"] = {"<cmd>tablast<cr>", "which_key_ignore"},

  r = {
    name = "[config]",
    o = {
      "<cmd>call OpenConfig()<cr>",
      "open config"
    },
    r = {
      "<cmd>so $MYVIMRC | echo 'config reloaded!'<cr>",
      "reload config"
    },
    i = {
      "<cmd>PlugInstall<cr>",
      "install plugins"
    },
    c = {
      "<cmd>PlugClean<cr>", 
      "clean plugins"
    },
  },

  t = {
    name = "[tab]",
    n = {
      "<cmd>tab new<cr>",
      "new tab"
    },
    c = {
      "<cmd>tab close<cr>",
      "close tab"
    },
  },
}

wk.register({
  ["<leader>"] = leader_maps,
  ["<C-k>"] = {
    "<cmd>m .-2<cr>==",
    "move line up"
  },
  ["<C-j>"] = {
    "<cmd>m .+1<cr>==",
    "move line down"
  }
}, {silent = true})

-- Center cursor
-- nnoremap j jzz
-- nnoremap k kz
--
-- Terminal (using tmux now)
-- nnoremap <silent> <A-`> :sp \| resize 10 \| term<CR>i
-- tnoremap <silent> <Esc> <C-\><C-n> \| :wincmd k<CR>

EOF
" vim: ft=lua
