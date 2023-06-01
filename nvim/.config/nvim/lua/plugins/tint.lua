if true then
  return {}
end

return {
  "levouh/tint.nvim",
  opts = {},
  config = function(_, opts)
    require("tint").setup(opts)
  end,
}
