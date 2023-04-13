local picker   = require "muryp-bookmark.utils.picker"
local getNames = require "configs.file.telescope.utils.getNames"
local M        = {}
local opts     = {}

---@param arg {option:table,list:table}
---example :
---```lua
--{
---  list = {
---    muryp = "~/web/muryp",
---    vim = "~/.config/nvim",
---  },
---  option = {
---    treeOpen = 'lua _G.TreeOpenNow()',
---    telescope = 'Telescope find_files'
---  }
---}
---````
M.setup        = function(arg)
  opts = arg
end
M.picker       = function()
  local names = getNames(opts.list)
  local function callback(selection)
    local opts_names = getNames(opts.option)
    picker({
      opts = opts_names,
      callBack = function(selection2)
        vim.cmd('cd ' .. opts.list[selection[1]])
        vim.cmd('execute "' .. opts.option[selection2[1]] .. '"')
      end,
      title = "choose what command do you want"
    })
  end

  picker({
    opts = names,
    callBack = callback,
    title = 'choose your path favorite'
  })
end

return M
