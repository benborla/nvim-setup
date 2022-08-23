local status, aerial = pcall(require, 'aerial')
if (not status) then return end

aerial.setup {
  open_automatic = true,
}

vim.api.nvim_set_keymap('n', '<F2>', '<cmd>AerialToggle<cr>', {})
