lua << EOF

local wk = require("which-key")
wk.setup {
    icons = {
        separator = "",
        breadcrumb = "",
        group = "",
    },
    layout = {
        height = {min = 5, max = 25},
        width = {min = 20, max = 50},
        spacing = 0,
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ", "|.*"},
}

EOF
