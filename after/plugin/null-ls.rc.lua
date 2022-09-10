local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

local null_ls = require("null-ls")

null_ls.setup {
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
      vim.api.nvim_command [[augroup END]]
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.twigcs,
    null_ls.builtins.formatting.blade_formatter,
    -- null_ls.builtins.formatting.phpcsfixer,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    -- null_ls.builtins.diagnostics.phpcs.with({
    --   command = "/Users/benbor/.composer/vendor/bin/phpcs",
    -- }),
    null_ls.builtins.formatting.yamlfmt,
    null_ls.builtins.hover.dictionary,
    null_ls.builtins.formatting.trim_whitespace,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
}
