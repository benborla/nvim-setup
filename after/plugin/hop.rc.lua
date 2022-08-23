local status, hop = pcall(require, 'hop')
if (not status) then return end

hop.setup {}
vim.api.nvim_set_keymap('', ';h', "<cmd>HopWord<cr>", {})
