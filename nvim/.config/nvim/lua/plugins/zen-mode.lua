return {
  {
    "folke/zen-mode.nvim",
    keys = {
      {
        "<leader>z",
        function()
          require("zen-mode").toggle()
        end,
        desc = "Toggle ZenMode",
        mode = { "n" },
      },
    },
    opts = {
      window = {
        backdrop = 1,
        width = 0.8,
        height = 0.8,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          ruler = false,
          showcmd = false,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = true },
        tmux = { enabled = true },
      },
    },
    config = function(_, opts)
      require("zen-mode").setup(opts)
    end,
  },
  {
    "folke/twilight.nvim",
    opts = {
      context = 4,
    },
    config = function(_, opts)
      require("twilight").setup(opts)
    end,
  },
}
