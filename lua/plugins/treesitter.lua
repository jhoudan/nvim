return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "lua", "vim", "elixir", "ruby", "heex", "javascript", "html" },
        sync_install = false,
      highlight = { enable = true },
        indent = { enable = true },  
      })
    end

  }
}

