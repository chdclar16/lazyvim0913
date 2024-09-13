return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      --"wave", 'dragon', or "lotus"
      theme = "lotus", -- Choose "wave", "dragon", or "lotus"
      transparent = true,
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
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
