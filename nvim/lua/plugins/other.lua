return {
  "rgroli/other.nvim",
  event = "BufRead",
  config = function()
    require("other-nvim").setup({
      mappings = {
        "golang",
        "typescript",
        "javascript",
        "rust",
        "python",
        "react",
        "vue",
        "css",
        "html",
        "zig",
        "java",
        "c",
        "svelte",
        "markdown",
        "toml",
        "json",
        "yaml",
        "lua",
        "sh",
        "bash",
        {
          transformer = "lowercase",
        }
      },
      transformers = {
        lowercase = function(inputString)
          return inputString:lower()
        end,
      },
      style = {
        border = "rounded",
        separator = "│",
        width = 0.8,
        padding = 1,
        minHeight = 1,
      },
      showMissingFiles = true,
    })
  end,
}
