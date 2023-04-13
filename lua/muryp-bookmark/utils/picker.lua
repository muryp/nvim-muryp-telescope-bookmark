return function(arg)
  local pickers = require "telescope.pickers"
  local finders = require "telescope.finders"
  local actions = require "telescope.actions"
  local conf = require("telescope.config").values
  local action_state = require "telescope.actions.state"
  local callback = arg.callBack
  local opts = arg.opts
  local title = arg.title

  pickers.new({}, {
    prompt_title = title,
    finder = finders.new_table {
      results = opts
    },
    attach_mappings = function(prompt_bufnr, _)
      -- modifying what happens on selection with <CR>
      actions.select_default:replace(function()
        -- closing picker
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        callback(selection)
        -- do stuff
      end)
      -- keep default keybindings
      return true
    end,
    previewer = false,
    sorter = conf.generic_sorter({}),
  }):find()
end
