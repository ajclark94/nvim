return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")

    local keymap = vim.keymap

    nvim_tmux_nav.setup({
      disable_when_zoomed = true,
    })
    keymap.set("n", "<C-n>", nvim_tmux_nav.NvimTmuxNavigateLeft)
    keymap.set("n", "<C-i>", nvim_tmux_nav.NvimTmuxNavigateDown)
    keymap.set("n", "<C-e>", nvim_tmux_nav.NvimTmuxNavigateUp)
    keymap.set("n", "<C-o>", nvim_tmux_nav.NvimTmuxNavigateRight)
    keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
    keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
  end,
}
