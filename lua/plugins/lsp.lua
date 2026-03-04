return {
  -- Add nvim-lspconfig plugin if it's not already there
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifierPreference = "non-relative", -- Absolute imports
            },
          },
        },
      },
    },
  },
}
