local keymap = vim.keymap

-- Do not yank with x
-- Remove character using "x" when in normal mode
keymap.set('n', 'x', '"_x')

-- Increment/decrement
-- Increment/decrement a number
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
-- for mac press ^ + a to select all texts
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', 'aa', 'gg<S-v>G')

-- press nww to save changes
keymap.set('n', '<C-s>', '<ESC>:w!<CR>')
keymap.set('i', '<C-s>', '<ESC>:w!<CR>')
keymap.set('n', 'nww', '<ESC>:w!<CR>')
-- press ww to save changes when in visual mode
keymap.set('v', 'ww', '<ESC>:w!<CR>')
-- press ww to save changes when in insert mode
keymap.set('i', 'ww', '<ESC>:w!<CR>')
-- press qq to close file
keymap.set('n', 'qq', '<ESC>:q!<CR>')
-- press ii to go back to normal mode
keymap.set('i', 'ii', '<ESC>')
keymap.set('v', 'ii', '<ESC>')

keymap.set('n', 'j', 'gj')
keymap.set('n', 'k', 'gk')

-- press te to open a new tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- SPLIT WINDOW
-- press sg to split current file horizontally
keymap.set('n', 'sg', ':split<Return><C-w>w', { silent = true })
-- press sg to split current file vertically
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- MOVE WINDOW

-- ctrl + w
keymap.set('n', '<Space>', '<C-w>')
-- space + <- to move window to the left
keymap.set('', 's<left>', '<C-w>h')

-- space + -> to move window to the right
keymap.set('', 's<right>', '<C-w>l')

-- space + arrow up to move window to the up
keymap.set('', 's<up>', '<C-w>k')

-- space + arrow down to move window to the down
keymap.set('', 's<down>', '<C-w>j')

keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')


-- RESIZE WINDOW
-- press arrow left to resize window from the left
keymap.set('n', '<left>', '<C-w><')
-- press arrow right to resize window from the right
keymap.set('n', '<right>', '<C-w>>')
-- press arrow up to resize window from the up
keymap.set('n', '<up>', '<C-w>+')
-- press arrow down to resize window from the down
keymap.set('n', '<down>', '<C-w>-')
-- @keymap <space> + ff go to definition
-- then press ctrl + o to go back to the selected text prior to going to the defnition
keymap.set('n', '<Space>ff', ':vsplit | lua vim.lsp.buf.definition()<Return>')

keymap.set('n', ';g', ':TroubleToggle<CR>')


-- LSP Shortcuts
-- to show the drop down press ctrl + n, to select or highlight you may use either the arrow keys or ctrl + n
-- for LSP docs, to scroll down on docs press ctrl + d, to scroll up press ctrl + f
