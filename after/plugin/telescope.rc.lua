local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      -- disables netrw add use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end
        },
        ['n'] = {
          ['N'] = fb_actions.create,
          ['h'] = fb_actions.goto_parent_dir,
          ['/'] = function() vim.cmd('startinsert') end
        }
      }
    }
  }
}

telescope.load_extension('file_browser')

local opts = { noremap = true, silent = true }

-- @key-map press ctrl + p to find file 
vim.keymap.set('n', '<C-p>', "<cmd>lua require('telescope.builtin').find_files({ no_ignore = false, hidden = true})<cr>", opts)
-- @key-map press ;r find file that contains the regex
vim.keymap.set('n', ';r', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
-- @key-map press \\ find file in the buffer
vim.keymap.set('n', '\\\\', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)

-- @key-map press ;t for help tags
vim.keymap.set('n', ';t', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
-- @key-map press ;; for resume function
vim.keymap.set('n', ';;', "<cmd>lua require('telescope.builtin').resume()<cr>", opts)
-- @key-map press ;; for resume to previous action
vim.keymap.set('n', ';e', "<cmd>lua require('telescope.builtin').diagnostics()<cr>", opts)
-- @key-map press ;f to open file explorer
vim.keymap.set('n', ';f', "<cmd>lua require('telescope').extensions.file_browser.file_browser({ path = '%:p:h', cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = 'normal', layout_config = { height = 40 }})<cr>", opts)

-- additional shortcuts
-- @key-map when in file explorer: press ctrl + t to open a file in a new tab, press ctrl + x to open file in horizontal split, ctrl + v to vertical split
-- @key-map shift + n to create a new file