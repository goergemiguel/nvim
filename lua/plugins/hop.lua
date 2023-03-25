return {
  "phaazon/hop.nvim",
  config = function()
    local setup, hop = pcall(require, "hop")
    if not setup then
      return
    end
    hop.setup()
  end,
}
