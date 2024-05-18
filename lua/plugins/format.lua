return {
  --
  -- Formatter plugin
  --
  {
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
      {
        "<leader>F",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
      },
    },
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { { "prettierd", "prettier" } },
      },
    },
  },

  --
  -- Pairs manipulation (parenthesis, brackets, quotes,...)
  --
  { "tpope/vim-surround" },
  {
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end,
  },

  --
  -- Comment plugin
  --
  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      require("Comment").setup()
    end,
  },
}
