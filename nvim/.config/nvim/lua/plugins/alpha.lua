return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
      ░    ░  ░    ░ ░        ░   ░         ░   
                              ░                  
    ]]
    dashboard.section.header.val = vim.split(logo, "\n")

    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      desc = "hide cursor for alpha",
      callback = function()
        local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
        hl.blend = 100
        vim.api.nvim_set_hl(0, "Cursor", hl)
        vim.opt.guicursor:append("a:Cursor/lCursor")
      end,
    })
    vim.api.nvim_create_autocmd("BufUnload", {
      buffer = 0,
      desc = "show cursor after alpha",
      callback = function()
        local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
        hl.blend = 0
        vim.api.nvim_set_hl(0, "Cursor", hl)
        vim.opt.guicursor:remove("a:Cursor/lCursor")
      end,
    })

    return dashboard
  end,
}
