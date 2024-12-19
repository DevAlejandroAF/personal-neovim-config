return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
          is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
          end,
        },
      })
    end,
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
       ⣿⣿⣿⣿⣿⣿⣿⢛⢉⠀⠠⣰⣵⣾⠋⠜⠠⢊⣄⣾⣿⣿⠟⠁⡜⢡⣾⣿⣿⣿⣿⡟⣡⣿⡿⠁⠰⠇⠀⢹⠟⠀⠉⠉⠃⠀⠀⠠⠇⠢⡄⢀⣀⣴⣿⣌⡂⣻⣿⣿⣦⣤⣿⣿⣿
       ⣿⣿⣿⣿⣿⠟⣡⠏⣮⣸⣷⣿⣿⢃⠈⠀⣰⣿⣿⣿⣿⡏⠀⡜⢠⣿⣿⣿⣿⡿⢋⣴⣿⡿⠁⢠⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠶⣭⢻⠛⢸⠿⢛⠿⣿⣿⣍⡩
       ⣿⣿⣿⢿⢋⣾⡟⢸⣿⣿⣿⡿⠃⠀⠀⣼⣿⣿⣿⣿⡟⡀⡘⢀⣿⣿⣿⡿⢋⣴⣿⣿⡟⠠⢀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡡⣤⠂⢻⣿⣿⣮⡹⣿⣿
       ⣿⣿⠧⣡⣿⠟⠐⣼⣿⣿⡟⠁⠠⠐⣼⣿⣿⣿⣿⡿⠱⠀⠀⣼⣿⡿⢋⣴⣿⠿⣻⠏⡀⠇⣼⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⣿⣧⠘⢸⡈⠛⠉⠙⢿⣮⣻
       ⣿⡏⣰⣿⡏⢀⢱⣿⣿⠟⠀⠠⠀⣸⣿⣿⣿⣿⣿⢃⠃⠀⣼⡿⠋⣰⣿⠟⠁⡰⢃⡤⡞⢠⡛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢿⣿⡌⣷⠀⠀⠀⠀⠈⣿
       ⡿⣼⡿⣿⡀⢆⣿⣽⠏⠀⠀⢁⢣⣿⣿⣿⣿⣿⠃⡜⠀⡼⠋⣠⡾⠛⣡⠎⠄⠁⡫⢦⡇⡐⠁⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⣿⣎⢀⣀⠀⠀⠀⠸
       ⢷⣿⡫⠁⠈⢈⣿⠏⠀⠀⠀⡄⢸⣿⣿⣿⣿⠇⠘⠀⠀⣠⠞⢋⣴⡾⠃⠀⣠⣾⣿⢠⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡭⢸⣷⣮⣓⣀⡀⠸
       ⡿⣿⠁⠀⢀⣾⡏⠀⠀⠀⠰⠀⣼⣿⣿⣿⡟⠀⠀⠀⢀⣠⣶⠟⠝⢁⣴⣿⣿⣿⡏⣿⠀⠀⠈⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣧⠘
       ⢡⠁⠀⠁⣾⡟⠀⠀⠀⠀⠂⢀⣿⣿⣿⡿⡘⠀⡀⠰⠛⠉⠀⢀⣴⣿⣛⡿⠿⠿⡇⣿⠀⠀⠜⣤⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠈⢿⣿⠀
       ⠁⠀⠂⣸⡟⠀⠀⠀⠀⠐⠀⢸⡟⠛⠁⢀⠇⠈⠁⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠃⠠⠀⠀⣧⢻⡡⡀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⢠⡿⠁⠀⠀⠀⠀⡆⠀⠈⠀⠀⠀⠸⠀⠂⠀⢀⣠⡤⠂⠀⠀⠀⠀⠄⠐⠠⣀⠀⠀⠀⢪⠣⠳⠅⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠅⠀⣠⣼⣷⠖⠂⠀⠀⡀⠀⠠⠀⠀⠀⠈⠓⣦⠀⠀⠑⢂⡀⠶⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠠⣸⠇⢀⡴⠾⢷⣦⠈⠀⠀⠀⠀⠀⠀⡁⣿⡯⢻⡏⢀⣀⠀⠀⠈⢦⣄⣠⠐⠀⠀⡀⠉⠑⠀⠀⠈⣉⣤⡛⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⣦⠏⠀⠡⠚⣉⡤⠉⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣗⣓⠀⠐⢂⠥⢖⢻⣷⡀⠀⡠⠀⠀⣷⣸⣦⡀⣠⣄⣽⣿⡦⢹⠆⠀⠀⠀⡠⠂⠀⠐⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⢀⣠⡷⠛⣩⣴⠂⠀⠀⠀⠀⠀⠀⢠⡿⣿⣿⣿⣿⣷⢤⣄⡙⠛⠸⠱⡝⢄⠈⠀⣸⣿⣿⣿⣿⣿⣿⣿⡿⢡⠊⢀⣀⣤⣾⡏⠀⣴⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⣿⣟⢠⣾⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⣿⣿⣿⣿⣟⡏⡞⢸⣹⠲⣶⣦⣤⣔⢻⣿⣿⣿⣿⣿⣿⡟⢑⣥⣶⣿⣿⣿⠟⢠⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⢿⡇⣼⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⢸⣿⣿⣿⣿⣿⣷⣧⡇⣇⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣯⡶⠿⠿⠿⠇⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠈⠁⠘⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡳⠀⠈⠉⠉⠀⠀⠀⣲⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢴⣶⢶⢶⣤⣄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⡄⠌⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢠⣿⣿⡼⡆⠸⢩⠳⣄⠀⠘⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣌⢢⡈⠻⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣿⣿⣿⣧⣷⠁⠇⠌⠘⢀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⣿⣿⣦⡑⠄⢌⠻⣿⣿⣿⣿⣿⣿⣤⣙⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡘⡀⢡⡀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣿⣿⣿⣿⣦⣌⠻⢦⣝⣿⣿⣿⣿⣿⣿⣿⣷⣤⡢⣭⣛⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠷⠇⢂⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠹⣿⣦⡈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀
       ⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠻⣿⣦⣿⢰⣾⣿⣿⣿⣿⣿⣛⣫⣥⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡔⢳
       ⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠃⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⡀
       ⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡧
       ⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇
       ⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳
       ⣿⣿⣿⡇⠀⠀⠀⠀⠀⠐⠶⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⠀⠀⢠
       ⣿⣿⣿⠀⠀⠀⠀⣠⢎⡴⠿⢷⣄⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⡿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈
       ⢏⠻⠁⠀⠀⠀⠀⠸⣨⣾⣿⣿⣿⣇⠘⡀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈
       ⠇⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⢐⠁⠀⠀⠀⠀⡠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                             ** WELLCOME TO NEOVIM **                   
        ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        },
      },
    },
  },
  {
    "j-morano/buffer_manager.nvim",
    config = function()
      require("buffer_manager").setup({
        select_menu_item_commands = {
          v = {
            key = "<C-v>",
            command = "vsplit",
          },
          h = {
            key = "<C-h>",
            command = "split",
          },
        },
        focus_alternate_buffer = false,
        short_file_names = true,
        short_term_names = true,
        loop_nav = false,
        highlight = "Normal:BufferManagerBorder",
        win_extra_options = {
          winhighlight = "Normal:BufferManagerNormal",
        },
      })
    end,
  },
}
