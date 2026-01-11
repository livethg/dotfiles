------------------------
--  Global arguments  --
------------------------
vim.opt.relativenumber = true
vim.opt.hlsearch       = true

vim.opt.list      = true
vim.opt.listchars = {
    space = '∙',
    tab   = '~~'
}

vim.opt.expandtab   = true
vim.opt.foldmethod  = 'indent'
vim.opt.shiftwidth  = 4
vim.opt.smarttab    = true
vim.opt.softtabstop = 0
vim.opt.tabstop     = 8

--------------
--  Keymap  --
--------------
-- Special functions
function makeEmptyGenerator (relative)
    return (function ()
        local index = vim.fn.line('.') + relative
        vim.api.nvim_buf_set_lines(0, index, index, false, {''})
    end)
end

-- Function keymaps
vim.keymap.set('n', '<space>', makeEmptyGenerator(-1))
vim.keymap.set('n', '<enter>', makeEmptyGenerator(0))

-- Arrows
vim.keymap.set('', '<up>',    'k', { remap = true; })
vim.keymap.set('', '<down>',  'j', { remap = true; })
vim.keymap.set('', '<left>',  'h', { remap = true; })
vim.keymap.set('', '<right>', 'l', { remap = true; })

vim.keymap.set('', '<C-up>',    '<C-W>k', { remap = true; })
vim.keymap.set('', '<C-down>',  '<C-W>j', { remap = true; })
vim.keymap.set('', '<C-left>',  '<C-W>h', { remap = true; })
vim.keymap.set('', '<C-right>', '<C-W>l', { remap = true; })

vim.keymap.set('', '<S-up>',    'K', { remap = true; })
vim.keymap.set('', '<S-down>',  'J', { remap = true; })
vim.keymap.set('', '<S-left>',  'H', { remap = true; })
vim.keymap.set('', '<S-right>', 'L', { remap = true; })

vim.keymap.set('', '<S-A-up>',    '<C-W>K', { remap = true; })
vim.keymap.set('', '<S-A-down>',  '<C-W>J', { remap = true; })
vim.keymap.set('', '<S-A-left>',  '<C-W>H', { remap = true; })
vim.keymap.set('', '<S-A-right>', '<C-W>L', { remap = true; })

