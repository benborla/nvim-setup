local status, phpactor = pcall(require, 'phpactor')
if (not status) then return end

phpactor.setup(
  {
    install = {
      branch = "master",
      bin = "/usr/local/bin/phpactor",
      php_bin = "php",
      composer_bin = "composer",
      git_bin = "git",
      check_on_startup = "none",
    },
    lspconfig = {
      enabled = true,
      options = {},
    },
  }
)
