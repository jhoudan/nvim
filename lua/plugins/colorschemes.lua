return {
  {
    "kyazdani42/blue-moon",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyodark")
      vim.cmd.colorscheme("blue-moon")
    end,
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "fenetikm/falcon",
  "embark-theme/vim",
  -- 'rakr/vim-two-firewatch',
  -- "metalelf0/jellybeans-nvim",
  -- "atelierbram/Base2Tone-nvim",
  -- "ricardoraposo/gruvbox-minor.nvim",
  -- "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      no_italic = true,
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
    end,
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
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        identifiers = { italic = false },
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
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
