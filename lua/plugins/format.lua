return {
  --
  -- Formatter plugin
  --
  {
    "stevearc/conform.nvim",
    branch = "nvim-0.9",
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
        elixir = { "mix" },
        javascript =  { "prettierd", "prettier", stop_after_first = true },
        typescript =  { "prettierd", "prettier", stop_after_first = true },
        typescriptreact =  { "prettierd", "prettier", stop_after_first = true },
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
    config = function()
      require("Comment").setup()
    end,
  },
}
