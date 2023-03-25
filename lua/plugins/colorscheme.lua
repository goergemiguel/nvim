return {
  "EdenEast/nightfox.nvim", -- preferred colorscheme
  lazy = false,
  config = function()
    -- set colorscheme to nightfly with protected call
    -- in case it isn't installed
    local status, _ = pcall(vim.cmd, "colorscheme terafox")
    if not status then
      print("Colorscheme not found!") -- print error if colorscheme not installed
      return
    end
  end,
}
