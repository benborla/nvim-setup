local status, bufferline = pcall(require, 'bufferline')
 if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icons = false,
    colors_icons = true,
    numbers = "buffer_id",
    offset = {
      text_align = 'left'
    }
  },
  highlights ={
    separator = {
      fg = '#073642',
      bg = '#002b36'
    },
    separator_selected = {
      fg = '#073642'
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true
    },
    fill = {
      bg = '#073642'
    }
  }
}

-- @key-map NORMAL MODE: tab will go to the next tab to the right when
vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrevious<cr>', {})
