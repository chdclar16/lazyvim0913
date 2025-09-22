return {
  -- Add nvim-lspconfig plugin if it's not already there
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
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
