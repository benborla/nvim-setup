local status, which_key = pcall(require, 'which-key')
if (not status) then return end

which_key.setup({

})

vim.keymap.set('n', '<Space><Space>', "<cmd>WhichKey<cr>")
