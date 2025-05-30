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


          ⣿⣿⣿⣿⣿⢟⢡⢨⣢⣶⡟⡑⠉⣨⣶⣿⣿⠋⡰⣡⣿⣿⣿⡿⢋⣾⡟⠀⠛⠈⠻⠃⠉⠈⠃⠀⠈⠁⠀⠠⠤⢾⣦⡄⣿⣿⣷⣾⢿⣿
          ⣿⣿⣿⡿⣱⠏⣷⣾⣿⡟⠀⢀⣼⣿⣿⣿⠇⠐⢱⣿⣿⡿⢋⣴⣿⠟⠀⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠙⠊⣁⠙⣭⣭⡻⣷⣶
          ⣿⡿⢌⣾⠟⢢⣿⣿⠏⠀⠀⣼⣿⣿⣿⢏⠀⢀⣾⡿⢋⣴⡿⢻⢋⠘⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢻⣯⠉⣆⠛⠟⠻⣮⢻
          ⣿⣡⣿⡇⡘⡾⣿⠋⠀⠠⣼⣿⣿⣿⡟⡌⢀⣾⢟⣴⡿⡋⠰⠡⢰⠃⡏⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⡜⡆⠀⠀⠀⢩
          ⣧⡿⠟⠠⢼⣶⠃⠀⢀⠑⣿⣿⣿⡟⠰⠁⠞⣡⠞⣡⡞⠀⣠⣬⠸⠐⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣉⠿⣆⡢⡀⠀⢈
          ⡿⡟⢀⢀⣾⠃⠀⠀⠄⢸⣿⣿⡿⠀⠀⠀⣊⣴⠿⠋⣠⣾⣿⡏⡇⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⢿⣿⣿⣿⠐
          ⠥⠀⠀⣾⠇⠀⠀⠠⠀⣿⣿⡿⠱⢀⠀⠾⠛⠀⣠⡞⢛⣛⣻⠇⠇⠀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠘⠿⠆
          ⠀⠈⣸⠇⠀⠀⠀⡀⢀⠏⠁⠀⡇⡀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠁⠀⠀⠸⡱⣇⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⢠⡏⠀⠀⠀⢀⠁⠀⠀⠀⠰⠀⣠⣴⡮⠅⠀⠀⠀⠐⠀⠀⠑⢤⡀⠈⠤⠁⢤⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⡾⢀⠴⡲⢦⠌⠀⠀⠀⠀⢈⣽⡯⢿⠁⡤⠀⠈⢢⡆⠄⠀⠀⡈⢙⠀⠀⠉⣤⡳⢄⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠛⠁⣁⣩⠖⡂⠀⠀⠀⠀⠀⢸⣿⣿⣿⣄⠘⠐⣮⢹⠗⡄⠠⠂⣸⣯⣷⣶⣶⣼⣿⢣⠃⠀⢀⣴⠁⢀⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⣷⠋⣴⡾⠃⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡿⣱⠒⣨⢬⣬⣂⡠⣿⣿⣿⣿⣿⡿⠣⣡⣴⣾⣿⠇⣰⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⣿⢸⣿⠇⠀⠀⠀⠀⠀⠀⠈⢸⣿⣿⣿⣿⣿⣴⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⡵⠾⠿⠿⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢍⣀⡀⠀⠀⠐⢝⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⣿⡟⡭⠟⣢⡀⠀⢤⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⢸⣎⢢⠙⢿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⣾⣿⣷⣷⠞⣁⠜⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⣕⠠⣝⠿⣿⣿⣿⣷⣬⣙⡛⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢁⠴⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣷⣮⣿⣾⣿⣿⣿⣿⣿⣿⣶⡙⢶⣯⠙⠿⣿⣿⣿⣿⣿⣿⣦⣭⡴⠂⠀⠀⠀⠀⠀⠀⠀⢀⠀
          ⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡻⣷⣤⡎⣼⣿⣿⣿⣿⣛⣯⠔⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇
          ⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣌⠉⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆
          ⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠏⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡃
          ⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱
          ⣿⣿⡏⠀⠀⠀⢀⢐⣒⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰
          ⡿⡿⠁⠀⠀⠰⢳⣿⣿⣷⡄⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠟⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠
          ⠆⠀⠀⠀⠀⠀⣾⣿⣿⣿⣇⠘⠀⠀⠀⢀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                              * 星野アイ *
          ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "ファイルを探す", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "新規ファイル", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "テキストを探す", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "最近のファイル", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "コンフィグ", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "s", desc = "リストアセッション", section = "session" },
            { icon = " ", key = "x", desc = "怠け者のエキストラ", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "へたれ", action = ":Lazy" },
            { icon = " ", key = "q", desc = "やめる", action = ":qa" },
          },
          -- keys = {
          --   { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          --   { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          --   { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          --   { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          --   { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          --   { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          --   { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          --   { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          --   { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          -- },
        },
        sections = {
          {
            section = "header",
            indent = -10,
          },
          -- {
          --   section = "terminal",
          --   cmd = "chafa ~/Pictures/Dashboard/anime-girl-base-3.jpg --format symbols --symbols vhalf --stretch; sleep .1",
          --   height = 29,
          --   width = 60,
          --   indent = 1,
          --   padding = 0,
          -- },
          {
            pane = 2,
            { title = "ラジビム", icon = "󰒲 ", indent = 25, padding = 1 },
            { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
            { section = "startup" },
          },
        },
      },
    },
  },
  --  {
  --    "j-morano/buffer_manager.nvim",
  --    config = function()
  --      require("buffer_manager").setup({
  --        select_menu_item_commands = {
  --          v = {
  --            key = "<C-v>",
  --            command = "vsplit",
  --          },
  --          h = {
  --            key = "<C-h>",
  --            command = "split",
  --          },
  --        },
  --        focus_alternate_buffer = false,
  --        short_file_names = true,
  --        short_term_names = true,
  --        loop_nav = false,
  --        highlight = "Normal:BufferManagerBorder",
  --        win_extra_options = {
  --          winhighlight = "Normal:BufferManagerNormal",
  --        },
  --      })
  --    end,
  --  },
}
