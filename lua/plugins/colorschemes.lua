return {
  {
    dir = "~/.config/nvim/colorschemes/aske",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
      vim.cmd.colorscheme("no-clown-fiesta")
      -- vim.cmd.colorscheme("jellybeans")
    end,
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "bettervim/yugen.nvim",
  "aktersnurra/no-clown-fiesta.nvim",
  "metalelf0/black-metal-theme-neovim",
  -- "kyazdani42/blue-moon",
  -- 'atelierbram/base2tone-nvim',
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  {
    dir = "~/.config/nvim/colorschemes/firewatch",
  },
  {
    "wtfox/jellybeans.nvim",
    opts = {
      italics = false,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
      })
    end,
  },
  --
  --
  --
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
}
