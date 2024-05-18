return {
  {
    "smoka7/hop.nvim",
    config = function()
      require("hop").setup()
      vim.keymap.set("n", "<Leader>h", "<cmd>HopWordBC<CR>", { noremap = true })
      vim.keymap.set("n", "<Leader>l", "<cmd>HopWordAC<CR>", { noremap = true })
      vim.keymap.set("n", "<Leader>j", "<cmd>HopLineAC<CR>", { noremap = true })
      vim.keymap.set("n", "<Leader>k", "<cmd>HopLineBC<CR>", { noremap = true })
    end,
  },
}
