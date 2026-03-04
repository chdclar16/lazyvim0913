return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = false,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = {},
      typeStyle = {},
      dimInactive = false,
      terminalColors = true,
      background = { dark = "wave", light = "lotus" },
      --"wave", 'dragon', or "lotus"
      theme = "wave", -- Choose "wave", "dragon", or "lotus"
      transparent = true,
      undercurl = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          Cursor = { fg = colors.palette.fujiWhite, bg = colors.palette.crystalBlue }, -- Normal mode
          lCursor = { fg = colors.palette.fujiWhite, bg = colors.palette.sakuraPink },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa-wave")
    -- vim.o.guicursor = "n-v-c:block-Cursor,i-ci:ver25-lCursor,r-cr:hor20-lCursor"
  end,
}
