-- lua/plugins/dash.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ 
███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ 
 ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  
                                                                  
          ]],
          -- you can customize other preset fields too (keys, footer, etc.)
        },

        --sections = {
        --{ section = "header" },
        --{ section = "keys", gap = 1, padding = 1 },
        --{
        --pane = 2,
        --icon = " ",
        --title = "Recent Files",
        --section = "recent_files",
        --indent = 2,
        --padding = 1,
        --},
        --{ section = "startup" },
        --},
      },
    },
  },
}
