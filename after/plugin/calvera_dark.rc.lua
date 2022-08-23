local status, calvera = pcall(require, 'calvera')
if (not status) then return end

vim.g.calvera_disable_background = true
vim.g.calvera_italic_comments = true
vim.g.calvera_transparent_bg = true


-- Load the colorscheme
vim.cmd[[highlight MatchParen cterm=bold]]
vim.cmd[[colorscheme calvera]]
