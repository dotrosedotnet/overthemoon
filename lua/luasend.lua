-- local inspect = require("inspect")

--- postbufwrite autocmd finds file
---   function takes full path of current buffer as argument
---   appends string to 'lua '
--- set present tmux session:window as variable
---   tmux display-message -p '#S:#I'
--- function takes present tmux session:window and lua command as variables
---   function sends command to index 1 of present tmux window

-- TODO: ensure that tmux pane exists first, else complain

local loc = vim.api.nvim_buf_get_name(0)
-- local loc = "/Users/dot/.config/nvim/lua/plugins/overthemoon/lua/luasend.lua"
local m = {}
m.muxfinder = io.popen("tmux display-message -p '#S:#I'")
m.muxloc = m.muxfinder:read("*a"):gsub("\n", "")
m.muxfinder:close()
local shcommand = "lua " .. loc
local muxommand = "tmux send-keys -t " .. m.muxloc .. ".1 '" .. shcommand .. "' Enter"
local function luasend()
	os.execute(muxommand)
end
return {
	luasend = luasend,
}
