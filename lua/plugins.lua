local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   --------------------- colorschemes --------------------
   -- tokyonight
   use("folke/tokyonight.nvim")
   -- nvim-tree (新增)
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
     -- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    use{
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
       }
end)
-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
