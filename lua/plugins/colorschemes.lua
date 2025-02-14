return {
  {
    dir = "~/.config/nvim/colorschemes/aske",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('kanagawa-dragon')
      -- vim.cmd.colorscheme('citrus-mist')
      vim.cmd.colorscheme('aske')
    end
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  'metalelf0/jellybeans-nvim',
  "kyazdani42/blue-moon",
  'drewxs/ash.nvim',
  "antonio-hickey/citrus-mist",
  "muchzill4/doubletrouble",
  "bettervim/yugen.nvim",
  -- 'fionn/grb256',
  -- 'atelierbram/base2tone-nvim',
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  {
    dir = "~/.config/nvim/colorschemes/firewatch",
  },
  -- {
  --   dir = "~/.config/nvim/colorschemes/aske",
  -- },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
      })
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        identifiers = { italic = false },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyodark").setup(opts)
    end,
  },
  --
  --
  --
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end,
  }
}
