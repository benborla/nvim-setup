local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProviding then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- Docs for LSP Servers 
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

-- TypeScript LSP Server
nvim_lsp.tsserver.setup{
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx"},
  cmd = { "typescript-language-server", "--stdio" }
}

-- PHP LSP Server
nvim_lsp.phpactor.setup{
  on_attach = on_attach,
  filetypes = { "php" },
  cmd = { "phpactor", "language-server" },
  root_pattern = { "composer.json", ".git" }
}

-- LUA LSP Server
nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the vim global
        globals = { 'vim' }
      },
      workspace = {
        -- make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

-- YAML LSP Server
nvim_lsp.yamlls.setup {
  settings = {
    yaml = {
    }
  }
}
