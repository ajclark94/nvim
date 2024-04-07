return {
  "voldikss/vim-floaterm",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>tt", "<cmd>FloatermToggle<CR>", { desc = "New Floating Terminal" })
  end,
}
