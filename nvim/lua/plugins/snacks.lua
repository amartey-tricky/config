return {
  {
    "folke/yanky.nvim",
    keys = { { "<leader>p", false, mode = { "n", "x" } } }
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigFile = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 5000,
        padding = true,
        sort = { "level", "added" },
        level = vim.log.levels.TRACE,
        icons = {
          error = " ",
          warn = " ",
          info = " ",
          debug = " ",
          trace = "✎ ",
          hint = " ",
        },
        border = "rounded",
        -- style = "fancy",

        notification_history = {
          border = "rounded",
          zindex = 100,
          width = 0.8,
          height = 0.8,
          minimal = false,
          title = "Notification History",
          title_pos = "center",
          ft = "markdown",
          keys = { q = "close", j = "next", k = "prev" },
          bo = { filetype = "snack_notif_history", modifiable = false, bufhidden = "wipe" },
          wo = { winhighlight = "Normal:SnackNotifierHistory" },
        },

        keep = function(notif)
          return vim.fn.getcmdpos() > 0
        end,
        ---@type snacks.notifier.style
        style = "compact",
        top_down = true, -- place notifications from top to bottom
        date_format = "%R", -- time format for notifications
        -- format for footer when more lines are available
        -- `%d` is replaced with the number of lines.
        -- only works for styles with a border
        ---@type string|boolean
        more_format = " ↓ %d lines ",
        refresh = 50, -- refresh at most every 50ms
      },
      quickfile = { enabled = true },
      dashboard = {
        enabled = true,
        row = nil,
        col = nil,
        pane_gap = 4,
        sections = {
          { section = "header" },
          {
            pane = 2,
            section = "terminal",
            height = 8,
            padding = 1,
            cmd = "ascii-image-converter -C -b --dither ~/.config/nvim/tricky.png",
          },
          { section = "keys", gap = 1, padding = 1 },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        },
      },
      indent = { enabled = true },
      input = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = {
        enabled = true,
        mode = { "n", "i", "c" },
        jumplist = true,
        foldopen = true,
        notify_jump = true,
        notify_end = true,
        debounce = 200,
      },
    },
    terminal = {},
  },
}
