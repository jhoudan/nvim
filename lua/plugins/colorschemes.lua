return {
  {
    dir = "~/.config/nvim/colorschemes/aske",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
      -- vim.cmd.colorscheme("aske")
      vim.cmd.colorscheme("jellybeans")
    end,
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "projekt0n/github-nvim-theme",
  -- "kyazdani42/blue-moon",
  -- "alexxgmz/e-ink.nvim",
  -- 'atelierbram/base2tone-nvim',
  "muchzill4/doubletrouble",
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
