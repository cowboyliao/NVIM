local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 复用 opt 参数
local opt = {noremap = true, silent = true }
map("n","<leader><CR>",":so ~/.config/nvim/init.lua<CR>",opt)

map("n",";",":",opt)

map("n","j","e",opt)
map("v","e","j",opt)
map("n","e","j",opt)
map("v","j","e",opt)

map("i","tn","<Esc>",opt)
map("v","tn","<Esc>",opt)
map("n","tn",":w!<CR>",opt)
map("i","<Leader>tn","<Esc>:wq!<CR>",opt)
map("v","<Leader>tn","<Esc>:wq!<CR>",opt)
map("n","<Leader>tn",":wq!<CR>",opt)
map("n","<Leader>nt",":q!<CR>",opt)

map("v","<leader>y","\"+y",opt)
map("n","<leader>y","\"+y",opt)
map("n","<leader>p","\"+p",opt)
map("n","<leader>Y","gg\"+yG",opt)
map("n","<leader>S","w !sudo tee % > dev/null",opt)

map("v","E",":m '>+1<CR>gv=gv",opt)
map("v","K",":m '<-2<CR>gv=gv",opt)

-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
  { key = "e", action = "" },
}
return pluginKeys
  -- nerdfont
  --ﭰ
