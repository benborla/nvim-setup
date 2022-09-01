local status, bufferline = pcall(require, 'bufferline')
 if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    left_mouse_command = "buffer %d",
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icons = true,
    colors_icons = true,
    diagnostics = 'nvim_lsp',
    show_buffer_icons = true,
    show_tab_indicators = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
  for e, n in pairs(diagnostics_dict) do
      local sym = e == "error" and ' '
        or (e == "warning" and " " or ' ' )
        s = s .. sym .. n
      end
      return s
    end,
    numbers = "buffer_id",
    enforce_regular_tabs = true,
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
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
