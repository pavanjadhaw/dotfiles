return {
  "aserowy/tmux.nvim",
  keys = {
    {
      "<C-h>",
      function()
        require("tmux").move_left()
      end,
      mode = { "n" },
    },
    {
      "<C-j>",
      function()
        require("tmux").move_bottom()
      end,
      mode = { "n" },
    },
    {
      "<C-k>",
      function()
        require("tmux").move_top()
      end,
      mode = { "n" },
    },
    {
      "<C-l>",
      function()
        require("tmux").move_right()
      end,
      mode = { "n" },
    },
  },
  opts = {
    copy_sync = {
      enabled = false,
    },
    navigation = {
      enable_default_keybindings = false,
    },
    resize = {
      enable_default_keybindings = false,
    },
  },
  config = function(_, opts)
    return require("tmux").setup(opts)
  end,
}
