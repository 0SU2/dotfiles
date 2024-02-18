-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local custom_horizon = require("lualine.themes.horizon")

custom_horizon.normal.a.bg = '#ff6b6b'

lualine.setup({
    options = {
        theme = custom_horizon,
    }
})
