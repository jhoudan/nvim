local function override_black_background()
  vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#BCBCBC" })
  vim.api.nvim_set_hl(0, "NonText", { bg = "#000000" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = "#000000" })
end

return {
  {
    "datsfilipe/vesper.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "vesper",
        callback = override_black_background,
      })
    end,
    config = function()
      require("vesper").setup({
        italics = {
          comments = false,
          keywords = false,
          functions = false,
          strings = false,
          variables = false,
        },
      })

      vim.cmd.colorscheme("vesper")
    end,
  },

  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  "aktersnurra/no-clown-fiesta.nvim",

  {
    dir = "~/.config/nvim/colorschemes/aske",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme("memoonry")
    -- end,
  },

  {
    "nyngwang/memoonry.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "memoonry",
        callback = override_black_background,
      })
    end,
  },

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
    "gavinok/spaceway.vim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "spaceway",
        callback = override_black_background,
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
