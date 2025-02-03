return {
  {
    'metalelf0/jellybeans-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('kanagawa-dragon')
      vim.cmd.colorscheme('jellybeans-nvim')
      -- vim.cmd.colorscheme('firewatch')
    end
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "kyazdani42/blue-moon",
  'drewxs/ash.nvim',
  -- 'fionn/grb256',
  -- "bettervim/yugen.nvim",
  -- 'atelierbram/base2tone-nvim',
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  {
    dir = "~/.config/nvim/colorschemes/firewatch",
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
