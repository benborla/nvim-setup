local status, git = pcall(require, 'git')
if (not status) then return end


git.setup {
  keymaps = {
    -- Open blame window
    -- @keymap Normal Mode: press \ + gb to view git blame
    blame = "<Leader>gb",
    -- Open file/folder in git repository
    browse = "<Leader>go",
    open_pull_request = "<Leader>gp",
  }
}
