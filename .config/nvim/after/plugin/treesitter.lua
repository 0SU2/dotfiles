require('nvim-treesitter.configs').setup ({
    ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'c' , 'javascript', 'html', 'bash', 'rasi'},
    auto_install = true,
    ignore_install = {},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})


