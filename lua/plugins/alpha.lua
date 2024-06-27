return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    -- local dashboard = require("alpha.themes.startify")
    local dashboard = require("alpha.themes.dashboard")

--    dashboard.section.header.val = {
--      [[                                                                       ]],
--      [[                                                                       ]],
--      [[                                                                       ]],
--      [[                                                                       ]],
--      [[                                                                     ]],
--      [[       ████ ██████           █████      ██                     ]],
--      [[      ███████████             █████                             ]],
--      [[      █████████ ███████████████████ ███   ███████████   ]],
--      [[     █████████  ███    █████████████ █████ ██████████████   ]],
--      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
--      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
--      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
--      [[                                                                       ]],
--      [[                                                                       ]],
--      [[                                                                       ]],
--    }

--    dashboard.section.header.val = {
--      [[                                                    ]],
--      [[⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡀⠀⠀⠀⠈⠳⣦⡀⠀⠀⠀⠀⠀⠄⡀⠀⠀⠀⠀⢁⢻⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣆⠈⢄⡀⠀⠈⠙⠓⠶⠤⠀⢢⡀⠃⠀⠀⠀⠀⢸⢸⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣭⣭⡿⣧⣄⠻⣶⡤⣤⡀⠀⢠⢐⠀⣇⡄⠀⠀⠀⠀⢸⡇⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣶⣤⣀⢹⣷⣮⣝⣳⡇⠈⡽⡯⠀⡟⡇⠀⠀⠀⠀⢸⡇⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡇⣀⠀⠀⠀⠀⠀⠀⠀⢀⣀⢀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠿⠿⠻⠻⠿⣿⣿⣿⣿⣿⣿⣦⡲⣗⣘⡥⣷⠀⠀⠀⠀⣸⢁⢿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⡇⣿⠀⠀⠀⠀⠀⠀⢠⠩⣥⣾⣄⡀⠀⠀⠀⠀⣠⠍⠀⢀⢀⣤⣤⣤⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣪⠀⠀⠀⢀⡟⣰⣇⣿⣿⣿⣿⣿]],
--      [[⣿⣿⢀⣿⠀⠀⠀⠀⠀⠀⠸⠰⠿⢿⡟⠉⠀⠀⠀⠀⢁⣴⣾⣿⣿⣯⢯⣝⣿⣿⣿⣿⣿⣿⣿⣮⣿⣿⣿⡏⣾⡀⠀⠞⣠⣿⢸⣿⣿⣿⣿⣿]],
--      [[⣿⡟⣸⣿⠀⠀⠀⠀⠀⠀⠀⣦⡁⢦⡅⠀⠀⠀⠀⠀⢹⣿⣿⣯⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢿⣇⢊⣴⢸⣿⢸⣿⣿⣿⣿⣿]],
--      [[⣿⠇⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⠛⠣⠄⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⢀⠸⣿⣿⠋⠀⠘⣿⡜⢿⢸⣿⡏⣿⣿⣿⣿⣿]],
--      [[⣿⢸⣿⠁⠀⠀⠀⠀⠀⣠⣤⣶⣦⣤⣄⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣭⣥⣤⣚⡻⠿⢇⣿⠋⠀⠀⢰⣹⣿⡜⡏⣿⣧⢻⣿⣿⣿⣿]],
--      [[⡏⢸⡏⠀⠀⠀⠀⣠⣶⣶⣶⣶⣭⣝⣛⠀⠀⠀⠀⠀⠀⢰⣤⣍⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⢾⠧⢻⣿⣎⢸⣿⡞⣿⣿⣿⣿]],
--      [[⣇⠘⣵⣾⣿⣿⣶⣶⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⡻⣿⣿⣿⣶⡌⣩⣽⣛⣛⣻⡿⠟⠀⠀⠀⠀⠀⢻⣿⣆⢿⠿⠇⡿⠻⠎⠻⣿⣿]],
--      [[⢇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠸⣎⢿⣿⢏⣮⣿⣿⣿⣿⣿⡧⠀⠀⠀⠀⠀⠀⡜⣿⣿⣆⣿⣿⣿⡿⢿⣫⣮⡻]],
--      [[⣾⡿⣟⣫⣭⣿⣿⣿⣭⣽⣛⠿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠹⡜⢋⡎⣿⣸⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⣿⣎⣿⢹⢫⣴⣶⣾⣿⣿⣿⡇]],
--      [[              ** WELLCOME TO NEOVIM **              ]],
--      [[                                                    ]],
--    }

--    dashboard.section.header.val = {
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⢂⠜⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠈⢄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠈⡐⢈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⣾]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠄⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣽⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢂⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡐⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣾⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⠘⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠢⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠄⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠁⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠈⠌⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⢀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠂⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⡌⡈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⡀⠀⠀⠀⠀⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢿⡠⢹⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⢧⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠸⣧⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⣞⢧⠀⠀⠀⠀⠸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⣿⡄⢹⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢷⣿⣯⢧⠀⠀⠀⠀⠹⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⡂⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⣿⣷⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⣣⡀⠀⠀⠀⠘⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢢⠀⠄⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠁⠀⠀⠀⠉⠛⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢻⣿⡆⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⣿⣿⣿⣿⣿⣴⠄⠀⠀⠀⠹⣮⡷⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠆⡐⡈⠱⠆⣤⠀⠈⠀⠀⠀⣀⣀⠀⠀⠀⠀⣬⣑⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⠈⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣯⡤⠀⠀⠀⠹⣿⢯⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠂⠄⠁⠀⠀⠀⠐⠀⠈⢻⣿⣦⡀⠀⠈⠻⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢰⣿⣿⡀⣿⣿⣿⣿⣿⣷⡿⣽⢿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠘⣿⣿⣾⣥⣄⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⡄⠀⣈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡀⣿⣿⡇⣿⣿⣿⣿⣿⣿⢿⣿⣻⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠈⢻⣷⣟⣷⣯⣆⡄⠀⠉⠂⠤⢄⣀⣀⡀⣀⡀⠀⠀⠀⠀⠆⠀⢐⠿⠿⠠⠸⣿⣿⣿⠀⣬⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣿⣿⣷⢸⣿⣿⣿⣿⣟⣿⣾⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣷⣶⣶⣦⣤⣤⣬⣤⣭⣭⣥⣤⡀⠀⠹⣿⣿⣿⣿⣿⣿⣶⣤⣤⣀⣈⣁⣉⡋⠁⠀⠀⠐⠀⣧⠀⠀⢀⠄⠁⠀⣿⣿⣿⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⣽⣿⣿⢸⣿⣿⣿⣿⡿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⠿⡿⢿⢿⣿⣿⣿⣦⡀⠈⠻⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⢧⠀⠀⢀⠈⠀⣿⡀⣠⠎⠀⣀⠀⢿⣿⣿⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⣾⣿⣿⢸⣿⣿⣿⣿⣷⣿⣻⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣛⣍⣒⠑⣂⡑⠈⠃⠜⠹⢿⣿⣿⣿⣦⣄⠉⠻⣿⣿⣿⣿⣿⣿⣽⣿⣿⣌⠄⠀⠀⠙⢦⣽⣷⠋⠐⠂⠀⠀⣼⣿⣿⣟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢱⣻⣿⣿⡯⣿⣿⣿⣿⣿⣾⢿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣭⣂⡉⠜⡩⢿⣿⣿⣿⣿⣿⣦⣌⡛⢿⣿⣿⣿⣿⣿⣿⣹⢸⠀⢀⡀⢨⣿⡿⣦⡀⠠⢀⠀⣾⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢸⣿⣿⢻⡇⣿⣿⣿⣿⣿⣿⣿⣿⣻]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣱⣸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣯⣿⣿⣿⣿⣿⣿⢠⡾⢃⡟⠹⡇⠈⠙⠢⡀⢠⣿⣿⣇⣻⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢸⣿⣿⣿⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢀⣺⡖⣀⢇⣠⣤⠁⢀⣾⣿⣿⣺⣿⣿⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠈⢽⣿⢸⣿⡿⣠⠿⣿⣿⣽⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⢠⡴⣿⣿⣶⣤⠀⡀⠂⠌⠠⠌⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⡿⣟⣻⡿⠭⢟⡻⣛⠿⣲⠞⠯⡹⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⣭⣭⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢢⣿⣿⣿⠁⢸⣿⢿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⣰⣿⡧⢐⠨⡙⢋⠋⣄⣜⣬⡇⠐⠠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣻⢿⠾⠛⡀⠁⠉⠁⠀⠀⠀⠈⠀⠈⠁⠡⢒⣹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣟⣿⣿⣿⣻⣽⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⡏⠐⢘⣿⣿⣧⣹⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⢀⣿⣿⠇⡈⣷⣿⣶⣿⣿⣿⣿⡇⢈⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⣞⡑⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⣤⣤⣄⣀⣀⣉⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣽⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⡟⣾⡿⢀⢢⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⣼⣿⡟⢀⡰⣿⣿⣿⣿⣿⣿⣿⣧⠀⢂⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠟⠁⠀⠀⠀⠀⢀⣤⣤⣤⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣯⣿⣯⣿⢿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡾⣿⣿⠁⢤⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⢸⡟⣁⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠷⡀⢂⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⡀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣿⣿⣿⣇⣾⣷⣆⠀⠀⠀⠀⠀⠀⢰⣟⣿⠁⠌⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠐⡈⡐⠞⠻⠟⠿⣿⣿⣿⣿⣿⡟⠉⡐⠠⠁⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡫⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣻⣿⣻⣽⣿⣿⣟⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡄⠀⠀⠀⠀⢠⣿⡿⠃⠌⢰⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠡⣶⣌⠐⡈⠄⠈⢿⣿⣿⡟⡀⢂⠐⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣵⣾⣿⣿⣿⣿⣿⢿⣿⢿⣿⣯⣿⣿⣿⣻⣿⢿⣽⣷⣿⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⢠⣿⠗⠡⢈⣠⣼⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⣿⣿⡰⡐⡈⠐⡀⢛⠟⡡⠐⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⢷⣿⣯⣿⣽⣿⣻⣿⢿⣿⣷⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⣿⣿⣿⣿⣿⡆⠀⣠⣿⠏⠠⠁⣰⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⢻⣿⣷⣕⢌⡀⠐⡈⠰⢀⠡⢃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣾⣿⣿⣟⣿⣿⣯⣿⣽⣿⣻⣿⢿⡿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢹⣿⣿⣿⣿⣿⡸⠛⠁⠄⢁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⢿⣿⣿⣷⣌⡢⠠⢁⠆⡑⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣟⣷⣿⣿⣿⣽⣿⢿⣟⣿⡿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠘⣿⣿⣿⣿⣿⣧⠠⢁⣲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣷⣶⣬⣕⣩⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣻⣾⣯⣿⣟⣿⣻⣾⣿⣹⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡿⠿⣟⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⢸⣿⣿⣿⣿⣿⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡷⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⢿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣯⣿⡾⢟⡁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿]],
--      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠻⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣟⣿⠽⣛⠛⣍⠩⣄⡈⠢⡙⠴⣙⢿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⣟⣿⣿⣿⣿⣿⣿⡾⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣹⣾⣿]],
--      [[⠀⠀⢀⣠⣤⣤⣤⣤⣤⣤⣄⣀⡀⢀⠒⠠⠀⠄⠠⢀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣛⣿⣭⣒⣛⠛⠏⡜⡄⣋⠤⢓⠤⢃⡓⢌⡒⡡⠎⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⢸⣿⡟⣿⣿⣿⣿⣿⣿⣞⣿⣿⣿⡞⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⢿⣿]],
--      [[⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣰⣧⣧⣜⡐⠂⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣮⣔⣊⡥⢊⡵⢘⡰⢌⠥⣣⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡽⣿⣿⣿⣿⣿⣿⣯⢿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿]],
--      [[⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣍⣄⠘⠼⣿⣿⣿⡇⠡⢈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣙⠳⢭⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣾⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣷⡻⣿⣟⣿⣿⣿⣿⣿⣿⣷⣿⣻⢾⣷]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣭⣿⣿⠿⣿⣿⡄⠡⢋⣔⠈⠤⠁⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢣⢆⡍⣃⠫⣝⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡿⣿⣿⡻⣿⣿⣿⣿⣿⣿⣿⡽⣿⣹⣿⣿⣿⣿⣿⣿⣞⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣐⣺⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣙⢮⠲⡥⡓⢤⢩⡘⠩⠟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⣿⢿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣽⣏⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣛⢮⢳⡱⡹⣌⠦⣉⠧⡙⢆⠬⣩⢛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣼⣿⣿⣿⣾⣻⣷⣻⣿⣿⣿⣿⣿⣿⣿⣮⢹⣿⣿⣿⣿⣿⣿⣿⣻⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢭⢧⡳⡱⢎⡲⡑⣎⠹⣌⠶⡡⢎⡱⣉⠖⡈⠉⠙⠛⢿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣮⣋⢿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣽]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣶⣍⢷⡙⢦⢃⡗⢬⡓⣜⢲⢩⠖⡱⢌⠲⡡⠄⠀⣰⣿⣿⣿⣿⣿⣯⣽⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⣿⣿⣿⣿⣿⣿⣿⣿⣌⢿⣿⣿⣿⣿⣿⣿⣿⡼⣿⣿⣿⡿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⡙⣮⠱⣘⠦⣙⠬⣎⢣⠞⣡⢋⠖⣡⢋⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⡎⠻⢟⣯⣭⣿⣿⣿⣗⣛⣛⣋⣾⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣎⢇⢣⠎⡥⢳⢌⣣⢋⡴⣉⠞⣰⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣯⢢⢋⡴⢋⠖⡬⢒⡴⢁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣇⢣⠜⣡⠞⣡⢣⠂⢿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡿⢿⠿⢿⠛⢛⣻⣯⣿]],
--      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣇⠞⣡⠚⡤⠃⡜⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣯⡻⣿⣿⣿⣿⡿⣾⣿⣿⣿⡿⢃⣓⣬⣬⣶⣾⣿⣿⣿⣿⣿]],
--      [[⣶⣯⣿⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡜⡥⣙⢀⠓⣌⢡⢻⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣷⢾⣿⣿⣿⣷⣿⣿⣿⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[⣿⣿⣿⣿⣿⣷⣯⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡔⡁⢎⡱⢌⡒⠜⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⢻⣿⣿⣿⣿⣿⣯⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--      [[                                               ** WELLCOME TO NEOVIM **                                                 ]],
--      [[                                                                                                                        ]],
--    }

    dashboard.section.header.val = {
      [[⣿⣿⣿⣿⣿⣿⣿⢛⢉⠀⠠⣰⣵⣾⠋⠜⠠⢊⣄⣾⣿⣿⠟⠁⡜⢡⣾⣿⣿⣿⣿⡟⣡⣿⡿⠁⠰⠇⠀⢹⠟⠀⠉⠉⠃⠀⠀⠠⠇⠢⡄⢀⣀⣴⣿⣌⡂⣻⣿⣿⣦⣤⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠟⣡⠏⣮⣸⣷⣿⣿⢃⠈⠀⣰⣿⣿⣿⣿⡏⠀⡜⢠⣿⣿⣿⣿⡿⢋⣴⣿⡿⠁⢠⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠶⣭⢻⠛⢸⠿⢛⠿⣿⣿⣍⡩]],
      [[⣿⣿⣿⢿⢋⣾⡟⢸⣿⣿⣿⡿⠃⠀⠀⣼⣿⣿⣿⣿⡟⡀⡘⢀⣿⣿⣿⡿⢋⣴⣿⣿⡟⠠⢀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡡⣤⠂⢻⣿⣿⣮⡹⣿⣿]],
      [[⣿⣿⠧⣡⣿⠟⠐⣼⣿⣿⡟⠁⠠⠐⣼⣿⣿⣿⣿⡿⠱⠀⠀⣼⣿⡿⢋⣴⣿⠿⣻⠏⡀⠇⣼⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⣿⣧⠘⢸⡈⠛⠉⠙⢿⣮⣻]],
      [[⣿⡏⣰⣿⡏⢀⢱⣿⣿⠟⠀⠠⠀⣸⣿⣿⣿⣿⣿⢃⠃⠀⣼⡿⠋⣰⣿⠟⠁⡰⢃⡤⡞⢠⡛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢿⣿⡌⣷⠀⠀⠀⠀⠈⣿]],
      [[⡿⣼⡿⣿⡀⢆⣿⣽⠏⠀⠀⢁⢣⣿⣿⣿⣿⣿⠃⡜⠀⡼⠋⣠⡾⠛⣡⠎⠄⠁⡫⢦⡇⡐⠁⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⣿⣎⢀⣀⠀⠀⠀⠸]],
      [[⢷⣿⡫⠁⠈⢈⣿⠏⠀⠀⠀⡄⢸⣿⣿⣿⣿⠇⠘⠀⠀⣠⠞⢋⣴⡾⠃⠀⣠⣾⣿⢠⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡭⢸⣷⣮⣓⣀⡀⠸]],
      [[⡿⣿⠁⠀⢀⣾⡏⠀⠀⠀⠰⠀⣼⣿⣿⣿⡟⠀⠀⠀⢀⣠⣶⠟⠝⢁⣴⣿⣿⣿⡏⣿⠀⠀⠈⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣧⠘]],
      [[⢡⠁⠀⠁⣾⡟⠀⠀⠀⠀⠂⢀⣿⣿⣿⡿⡘⠀⡀⠰⠛⠉⠀⢀⣴⣿⣛⡿⠿⠿⡇⣿⠀⠀⠜⣤⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠈⢿⣿⠀]],
      [[⠁⠀⠂⣸⡟⠀⠀⠀⠀⠐⠀⢸⡟⠛⠁⢀⠇⠈⠁⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠃⠠⠀⠀⣧⢻⡡⡀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢠⡿⠁⠀⠀⠀⠀⡆⠀⠈⠀⠀⠀⠸⠀⠂⠀⢀⣠⡤⠂⠀⠀⠀⠀⠄⠐⠠⣀⠀⠀⠀⢪⠣⠳⠅⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠅⠀⣠⣼⣷⠖⠂⠀⠀⡀⠀⠠⠀⠀⠀⠈⠓⣦⠀⠀⠑⢂⡀⠶⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠠⣸⠇⢀⡴⠾⢷⣦⠈⠀⠀⠀⠀⠀⠀⡁⣿⡯⢻⡏⢀⣀⠀⠀⠈⢦⣄⣠⠐⠀⠀⡀⠉⠑⠀⠀⠈⣉⣤⡛⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣦⠏⠀⠡⠚⣉⡤⠉⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣗⣓⠀⠐⢂⠥⢖⢻⣷⡀⠀⡠⠀⠀⣷⣸⣦⡀⣠⣄⣽⣿⡦⢹⠆⠀⠀⠀⡠⠂⠀⠐⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⢀⣠⡷⠛⣩⣴⠂⠀⠀⠀⠀⠀⠀⢠⡿⣿⣿⣿⣿⣷⢤⣄⡙⠛⠸⠱⡝⢄⠈⠀⣸⣿⣿⣿⣿⣿⣿⣿⡿⢡⠊⢀⣀⣤⣾⡏⠀⣴⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⣿⣟⢠⣾⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⣿⣿⣿⣿⣟⡏⡞⢸⣹⠲⣶⣦⣤⣔⢻⣿⣿⣿⣿⣿⣿⡟⢑⣥⣶⣿⣿⣿⠟⢠⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⢿⡇⣼⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⢸⣿⣿⣿⣿⣿⣷⣧⡇⣇⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣯⡶⠿⠿⠿⠇⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠈⠁⠘⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡳⠀⠈⠉⠉⠀⠀⠀⣲⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢴⣶⢶⢶⣤⣄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⡄⠌⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢠⣿⣿⡼⡆⠸⢩⠳⣄⠀⠘⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣌⢢⡈⠻⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣿⣿⣿⣧⣷⠁⠇⠌⠘⢀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⣿⣿⣦⡑⠄⢌⠻⣿⣿⣿⣿⣿⣿⣤⣙⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡘⡀⢡⡀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣿⣿⣿⣿⣦⣌⠻⢦⣝⣿⣿⣿⣿⣿⣿⣿⣷⣤⡢⣭⣛⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠷⠇⢂⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠹⣿⣦⡈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀]],
      [[⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠻⣿⣦⣿⢰⣾⣿⣿⣿⣿⣿⣛⣫⣥⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡔⢳]],
      [[⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠃⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⡀]],
      [[⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡧]],
      [[⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇]],
      [[⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳]],
      [[⣿⣿⣿⡇⠀⠀⠀⠀⠀⠐⠶⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⠀⠀⢠]],
      [[⣿⣿⣿⠀⠀⠀⠀⣠⢎⡴⠿⢷⣄⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⡿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈]],
      [[⢏⠻⠁⠀⠀⠀⠀⠸⣨⣾⣿⣿⣿⣇⠘⡀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈]],
      [[⠇⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⢐⠁⠀⠀⠀⠀⡠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[                      ** WELLCOME TO NEOVIM **                   ]],
      [[                                                                 ]],
    }

--     dashboard.section.header.val = {
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⣿⣖⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣿⣿⣯⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⢻]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣷⡡⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠛⣛⣛⣉⣛⣛⡻⠔⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡒⢄⠈⠠⠀⠀⠀⠀⠀⠐⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠂⢆⠄⡄⡀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡢⢄⢈⠐⢀⠀⠀⠀⠀⠀⠉⡒⢤⢠⢀⡀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⡉⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⢑⣤⡈⠂⠄⡀⠀⠀⠈⠀⢃⠎⡜⡡⠎⡑⡈⠄⠃⠈⠠⠃⡙⠬⡱⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⢿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣝⡷⣦⣤⣒⠀⢄⡀⠀⡈⠚⠐⠂⠁⠀⠀⣠⣀⡀⠁⠰⣤⣵⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⢟⠋⠓⠊⠉⠁⠂⠃⠉⠉⠠⠛⠽⣛⢿⣿⣿⣿⣿⣿⣿⣿⣷⣜⡯⣿⣷⣾⣧⠅⡂⠀⠀⠀⠀⠀⠈⢻⣿⣦⠀⠈⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⠚⠁⠀⠀⠀⠀⣤⣤⣤⣄⣀⠀⠀⠀⢆⡙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⡜⠀⠀⠀⠀⡄⠀⠻⠀⢻⣿⣧⠀⢜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠃⠀⠀⠀⠀⠀⠀⢀⣀⠈⠻⣿⣿⣷⣦⡠⣈⠺⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣱⠀⠀⢤⡀⣇⡠⠂⠀⠈⣿⣿⣠⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⠀⠀⠀⠀⠀⠀⢀⠀⠊⠛⠀⠀⠙⣿⣿⣿⣿⣯⢷⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡏⠀⣀⠀⡹⣿⣅⠀⠐⠀⣿⣿⢿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⣠⠀⠀⣀⠀⠀⢸⡀⣠⠈⠀⠠⠄⠘⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⠁⣊⠁⢻⠀⠁⠂⢠⣿⡿⢫⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⣰⡇⠀⠀⠀⠉⠙⣺⣿⢧⣀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡑⣱⡖⡌⠲⠅⢀⣾⡿⡱⡿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⢠⣳⣇⠀⢀⡶⠀⣰⠏⢻⡄⠁⠉⠐⡁⠀⢺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡿⡿⡿⡳⡽⣭⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣼⣿⣿⡄⠉⠠⠜⡵⣄⣠⠃⡴⢚⡄⣀⣠⣻⣿⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣝⢿⣿⣿⣿⣿⣿⡫⢿⣝⣟⣽⣳⡳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣎⡛⠿⣄⡐⢀⡱⣬⡶⣧⠷⠿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣷⣑⡭⣺⢶⣹⣝⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⢋⡝⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⣿⣾⢯⢿⣫⡽⣞⣜⣯⢿⣝⡽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣾⣞⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⢰⢏⢆⠣⡜⡡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣪⢯⢾⢳⡻⣵⣟⣾⣺⣯⢾⢯⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⡌⣪⢨⠱⣌⠑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⣞⣯⣳⣻⡷⡽⣞⣷⣚⢯⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣻⣯⣭⣽⣿⣿⣭⣽⣟⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣰⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⢡⠓⢄⠪⡔⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢮⣷⡳⣿⡽⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⡿⠿⠛⠛⠉⠉⠉⠉⠉⠉⠙⠿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣎⠍⢠⠓⡬⡑⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠱⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢷⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣾⡀⡝⡰⠱⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⡀⠠⠀⡄⠠⢀⡀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣦⣕⣣⣜⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢀⠒⠠⢡⡑⢤⢃⠧⡘⢥⢃⢆⡀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⠯⣿⣶⣾⣿⢿⣿⣿⣷⡄⠀⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠨⣑⠣⡘⢆⡍⣒⠩⢆⠎⡒⣌⠂⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣼⣿⣿⣿⣿⣄⠀⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠱⣉⠦⡘⢤⠋⢦⠙⡴⣈⣹⣿⣿⣿⣿⣿⣿⣿⡿⣳⡿⣿⠿⣯⣟⡿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⣄⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡑⢪⡑⢎⡩⢆⡹⠤⣡⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣽⣱⣿⣿⢿⢹⣿⣿⣿⣿⣿⣿⣆⠀⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣄⠀⠀⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣜⡢⢑⠎⠔⣱⣿⣿⣿⣿⣿⣿⣿⠛⣿⣿⡳⠟⣿⣿⣿⣿⢿⣼⣿⣿⣿⣿⣿⣿⣿⡄⠀]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⣓⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⢹⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣋⠄⡀⠀⠹⠟⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⢛⣟⣚⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⡔⣀⠀⠀⠌⢥⢂⡩⠙⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢣⠱⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡤⢃⠄⠈⢠⢃⠖⡄⠀⠀⠀⠀⠈⠉⠙⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠃⣎⠱⡌⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡉⢎⡄⠀⠈⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⠀⠀⠀⠀⠀⢠⣶⣾⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣷⣾⣮⣥⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠰⣌⢣⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣯⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢂⢣⠃⢤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢽⡧⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠒⣼⡞⣆⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⠀⢀⣀⣘⣿⣭⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣯⣽⣟⣿⢿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⣿⡼⣇⢞⢷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣹⣏⣷⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⡻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡏⣿⢹⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡽⣵⣶⣯⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⣿⢾⣿⡇⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⣭⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⡇⣿⣿⣿⣿⣿⣿⣿⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣍⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣻⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠘⣾⣿⣇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⣿⣿⢯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡾⣿⣿⣿⣶⣄⠀⠀⠀⣿⣏⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--       [[                                 ** WELLCOME TO NEOVIM **                             ]],
--       [[                                                                                      ]],
--     }

    alpha.setup(dashboard.opts)
  end,
}
