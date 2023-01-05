local home = os.getenv('HOME')
local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end


db.custom_footer = {
  "",
  "",
  "Just for Fun!",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Poems                ",
    action = "Telescope man_pages",
  },
  {
    icon = "  ",
    desc = "Note of the year 2023",
    action="edit ~/Note/2023.md",
  },
  {
    icon = "  ",
    desc = "haha",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
   --icon = "  ",
  -- {
  --   icon = "  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}
db.custom_header = {
[[      ___       ___           ___           ___           ___     ]],
[[     /  /\     /  /\         /  /\         /  /\         /  /\    ]],
[[    /  /:/    /  /::\       /  /::\       /  /::\       /  /::\   ]],
[[   /  /:/    /  /:/\:\     /  /:/\:\     /  /:/\:\     /  /:/\:\  ]],
[[  /  /:/    /  /::\ \:\   /  /::\ \:\   /  /::\ \:\   /  /:/  \:\ ]],
[[ /__/:/    /__/:/\:\ \:\ /__/:/\:\ \:\ /__/:/\:\_\:\ /__/:/ \__\:\]],
[[ \  \:\    \  \:\ \:\_\/ \  \:\ \:\_\/ \__\/  \:\/:/ \  \:\ /  /:/]],
[[  \  \:\    \  \:\ \:\    \  \:\ \:\        \__\::/   \  \:\  /:/ ]],
[[   \  \:\    \  \:\_\/     \  \:\_\/        /  /:/     \  \:\/:/  ]],
[[    \  \:\    \  \:\        \  \:\         /__/:/       \  \::/   ]],
[[     \__\/     \__\/         \__\/         \__\/         \__\/    ]],
}
