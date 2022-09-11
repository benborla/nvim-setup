-- This requires to install npm live-server
-- $ npm i -g live-server
local function command(cmd)
  return function(...)
    -- it could be like this, if we didn't care about intercepting I/O
    os.execute(cmd, ...)
  end
end

local liveServerCommand = command('live-server')
local killLiveServer = command('kill -9')

function LiveServer(port)
  liveServerCommand(' --cors . ' .. port)
end

function TerminateLiveServer(port)
  killLiveServer(' $lsof( -ti :' .. port .. ')')
end

vim.keymap.set('n', '<S-l>s', '<ESC>lua LiveServer(10080)<CR>')
