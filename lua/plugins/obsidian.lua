return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = "markdown",
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "hvelv",
            path = "~/Documents/Hvelv",
          },
        },
      })
    end,
  },
}
