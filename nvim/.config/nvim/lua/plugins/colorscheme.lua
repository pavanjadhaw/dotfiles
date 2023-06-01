return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        color_overrides = {
          mocha = {
            rosewater = "#BA7694",
            flamingo = "#BA7694",
            pink = "#BA7694",
            mauve = "#8AABAC",
            red = "#AC8A8C",
            maroon = "#AC8A8C",
            yellow = "#ACA98A",
            green = "#8AAC8B",
            teal = "#8AABAC",
            sky = "#8F8AAC",
            sapphire = "#8F8AAC",
            blue = "#8F8AAC",
            lavender = "#AC8AAC",
            base = "#0f0f0f",
            mantle = "#0f0f0f",
            crust = "#0f0f0f",
          },
        },
        highlight_overrides = {
          all = function(colors)
            return {
              NormalFloat = {
                bg = colors.mantle,
              },
              FloatBorder = {
                bg = colors.mantle,
                fg = colors.mantle,
              },
              VertSplit = {
                bg = colors.base,
                fg = colors.base,
              },
              CursorLineNr = {
                fg = colors.mauve,
                style = { "bold" },
              },
              Pmenu = {
                bg = colors.mantle,
                fg = "",
              },
              PmenuSel = {
                bg = colors.crust,
                fg = "",
              },
              GitSignsChange = {
                fg = colors.peach,
              },
              NvimTreeIndentMarker = {
                fg = colors.surface0,
              },
            }
          end,
          mocha = function(colors)
            return {
              IndentBlanklineChar = {
                fg = colors.surface0,
              },
              IndentBlanklineContextChar = {
                fg = colors.surface2,
              },
              LineNr = {
                fg = colors.surface1,
              },
            }
          end,
        },
        integrations = {
          aerial = true,
          barbar = true,
          beacon = true,
          cmp = true,
          coc_nvim = true,
          dashboard = true,
          fern = true,
          fidget = true,
          gitgutter = true,
          gitsigns = true,
          harpoon = true,
          headlines = true,
          hop = true,
          illuminate = true,
          leap = true,
          lightspeed = true,
          lsp_saga = true,
          lsp_trouble = true,
          markdown = true,
          mason = true,
          mini = true,
          neogit = true,
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          nvimtree = true,
          octo = true,
          overseer = true,
          pounce = true,
          sandwich = true,
          semantic_tokens = true,
          symbols_outline = true,
          telekasten = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          ts_rainbow = true,
          ts_rainbow2 = true,
          vim_sneak = true,
          vimwiki = true,
          which_key = true,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
