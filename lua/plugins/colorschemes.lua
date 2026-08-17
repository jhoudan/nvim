local function force_black_background()
  vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#BCBCBC" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000", fg = "#BCBCBC" })
  vim.api.nvim_set_hl(0, "NonText", { bg = "#000000" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = "#000000" })
end

local function disable_all_italics()
  for _, group in ipairs(vim.fn.getcompletion("", "highlight")) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
    if ok and hl.italic then
      hl.italic = false
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

return {
  {
    dir = "~/.config/nvim/colorschemes/firewatch",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("firewatch")
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "terafox",
        callback = force_black_background,
      })

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "duskfox",
        callback = force_black_background,
      })
    end,
  },

  {
    "datsfilipe/vesper.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "vesper",
        callback = force_black_background,
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
    end,
  },

  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  {
    "saran13raj/wheat-fox.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "wheat-fox",
        callback = disable_all_italics,
      })
    end,
    config = function()
      require("wheat-fox").setup({
        styles = {
          comments = { italic = false },
          conditionals = { italic = false },
          loops = { italic = false },
          functions = { italic = false },
          keywords = { italic = false },
          strings = { italic = false },
          variables = { italic = false },
          numbers = { italic = false },
          booleans = { italic = false },
          properties = { italic = false },
          types = { italic = false },
          operators = { italic = false },
        },
      })
      vim.cmd.colorscheme("wheat-fox")
    end,
  },

  {
    "nyngwang/memoonry.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "memoonry",
        callback = force_black_background,
      })
    end,
  },
  {
    dir = "~/.config/nvim/colorschemes/captain",
  },
  {
    "wtfox/jellybeans.nvim",
    opts = {
      italics = false,
    },
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
