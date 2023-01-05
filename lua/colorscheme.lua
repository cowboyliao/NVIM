local colorscheme = "tokyonight"
require("tokyonight").setup({
  transparent =false,
  styles = {
    sidebars = "untransparent",
    floats = "untransparent"
  },
  on_highlights = function(hl, colors)
    hl.LineNr = {
      fg = colors.red
    }
    hl.CursorLineNr = {
      fg = colors.red
    }
  end
})

vim.cmd("colorscheme tokyonight")
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end
