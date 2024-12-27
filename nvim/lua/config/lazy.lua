-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "rose-pine" }, missing = true },
  -- automatically check for plugin updates
  checker = { enabled = true },
  ui = {
    -- border thickness
    border = "double",
    wrap = true,
    -- title of the UI
    title = "Lazy",
    -- custom header
    header = {
      " ████████████████████████████████████████ ",
      " █ Lazy.nvim █ ",
      " ████████████████████████████████████████ ",
    },
    -- background opacity
    backdrop = 70,
  },

  -- browser to open links
  browser = "arc",

  -- headless output
  headless = {
    process = true,
    log = true,
    task = true,
    colors = true,
  }
})
