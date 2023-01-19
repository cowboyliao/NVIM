local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 复用 opt 参数
local opt = {noremap = true, silent = true }
map("n","<leader><CR>",":nohlsearch<CR>",opt)
map("n",";",":",opt)
map("n","<c-f>",":silent !tmux neww tmux-sessionizer<CR>",opt)
map("n","<c-q>",":silent !tmux neww cht<CR>",opt)
map("n","<c-s>",":silent !tmux neww tmux-select<CR>",opt)
map("n",":",";",opt)
map("","ge","gj",opt)
map("","gn","gh",opt)
map("","gu","gk",opt)
map("","gi","gl",opt)
map("","gN","g0",opt)
map("","gI","g$",opt)
map("","Q","gqq",opt)
map("","gl","gu",opt)
map("","gL","gU",opt)

map("n","<leader>o","za",opt)
map("x","<leader>p","\"_dP",opt)
map("n","<leader>e",":!chmod +x %<CR>",opt)
map("n","<leader>s",[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],opt)
-- map("i","tn","<Esc>",opt)
-- map("v","tn","<Esc>",opt)
-- map("n","tn",":w!<CR>",opt)
-- map("i","<Leader>tn","<Esc>:wq!<CR>",opt)
-- map("v","<Leader>tn","<Esc>:wq!<CR>",opt)
map("n","<Leader>tn",":w!<CR>",opt)
map("n","<Leader>se",":q!<CR>",opt)


map("v","<leader>y","\"+y",opt)
map("n","<leader>Y","gg\"+yG",opt)
map("n","<leader>S","w !sudo tee % > dev/null",opt)

map("v","E",":m '>+1<CR>gv=gv",opt)
map("v","U",":m '<-2<CR>gv=gv",opt)

-- bufferline
-- 左右Tab切换
map("n", "<a-n>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<a-i>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<leader>x", ":Bdelete!<CR>", opt)
map("n", "<leader>bi", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bn", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>be", ":BufferLinePickClose<CR>", opt)


-- Telescope
-- Searchfile
map("n","<leader>f",":Telescope find_files<CR>",opt)
-- GlobalSearch
map("n","<leader>g",":Telescope live_grep<CR>",opt)

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
-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-e>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
  },
  n={
    ["E"] = "preview_scrolling_down",
    ["U"] = "preview_scrolling_up",
    ["e"] = "move_selection_next",
    ["u"] = "move_selection_previous",
    ["u"] = "move_selection_previous",
    ["x"] = "close",
  }
}
-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  -- code action
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  -- go xx
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  -- diagnostic
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  -- 没用到
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end
return pluginKeys
  -- nerdfont
  --ﭰ
