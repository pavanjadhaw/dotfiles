return {
  "gbprod/yanky.nvim",
  event = "VimEnter",
  dependencies = {
    "kkharji/sqlite.lua",
  },
  keys = {
    {
      "p",
      "<Plug>(YankyPutAfter)",
      mode = { "n", "x" },
    },
    {
      "P",
      "<Plug>(YankyPutBefore)",
      mode = { "n", "x" },
    },
    {
      "gp",
      "<Plug>(YankyGPutAfter)",
      mode = { "n", "x" },
    },
    {
      "gP",
      "<Plug>(YankyGPutBefore)",
      mode = { "n", "x" },
    },
    {
      "<c-n>",
      "<Plug>(YankyCycleForward)",
      mode = { "n" },
    },
    {
      "<c-p>",
      "<Plug>(YankyCycleBackward)",
      mode = { "n" },
    },
    {
      "<leader>yh",
      "<cmd>Telescope yank_history<CR>",
      desc = "Yank history",
      mode = { "n" },
    },
  },
  opts = {
    ring = {
      storage = "sqlite",
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 400,
    },
    preserve_cursor_position = {
      enabled = true,
    },
  },
  config = function(_, opts)
    require("yanky").setup(opts)
    require("telescope").load_extension("yank_history")

    vim.api.nvim_set_hl(0, "YankyPut", { link = "IncSearch" })
    vim.api.nvim_set_hl(0, "YankyYanked", { link = "IncSearch" })
  end,
}
