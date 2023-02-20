-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
local selected = require("lualine.themes.iceberg_dark")

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = selected,
  },
})
