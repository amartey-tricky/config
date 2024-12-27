return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle Diagnostic" },
    { "<leader>tr", "<cmd>Trouble lsp_references<cr>", desc = "Find References" },
    { "<leader>tq", "<cmd>Trouble quickfix<cr>", desc = "Quickfix" },
    { "<leader>tl", "<cmd>Trouble loclist<cr>", desc = "Loclist" },
  },
  opts = {
    icons = true,
  }
}
