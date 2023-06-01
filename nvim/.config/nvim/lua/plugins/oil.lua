return {
  "stevearc/oil.nvim",
  keys = {
    {
      "-",
      function()
        require("oil").open()
      end,
      desc = "Open oil",
      mode = { "n" },
    },
  },
  opts = {},
  config = function(_, opts)
    require("oil").setup(opts)
  end,
}
