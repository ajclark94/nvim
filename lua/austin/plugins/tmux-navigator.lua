return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<C-a><Left>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<C-a><Down>", "<cmd>TmuxNavigateDown<cr>" },
    { "<C-a><Up>", "<cmd>TmuxNavigateUp<cr>" },
    { "<C-a><Right>", "<cmd>TmuxNavigateRight<cr>" },
  },
  lazy = false,
}
