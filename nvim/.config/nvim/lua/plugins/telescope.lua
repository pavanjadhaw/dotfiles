return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- git
      { "<leader>gb", "<cmd>Telescope git_branches<CR>", desc = "commits" },
      { "<leader>gb", "<cmd>Telescope git_bcommits<CR>", desc = "commits" },

      -- find files in current buffer directory
      {
        "<leader>fc",
        function()
          require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
        end,
        desc = "commits",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "bottom_pane",
        layout_config = { prompt_position = "top", height = 0.60 },
        sorting_strategy = "ascending",
      },
    },
  },

  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
    keys = {
      {
        "<leader>fg",
        "<cmd>Telescope live_grep_args<cr>",
        desc = "Live grep with args",
      },
    },
  },
}
