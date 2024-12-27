return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>s", group = "[S]earch" },
      { "<leader>t", group = "[t]oggle and [t]rouble" },
      { "<leader>T", group = "Vite [T]est" },
{ '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
    },
  },
}
