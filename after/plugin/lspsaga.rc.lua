local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {}
}

local opts = { noremap = true, silent = true }

-- @keymap Normal Mode: press ctrl + j to jump to the current error in the editor
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
-- @keymap Normal Mode: press K to preview the docs of the selected function
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<cr>', opts)
-- @keymap Normal Mode: press g + r when you want to rename a variable, this will update all variable usage
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)
