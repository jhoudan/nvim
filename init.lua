-- Set <space> as leader key, must happen before plugins are loaded
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install a font from https://www.nerdfonts.com/font-downloads
-- Alternative to Iosevka: ZedMono Nerd Font
vim.g.have_nerd_font = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "plugins" }, {
  change_detection = {
    notify = false,
  },
})
