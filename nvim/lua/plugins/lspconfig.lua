return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      biome = {
        root_dir = function(fname)
          local lspconfig_utils = require("lspconfig.util")
          return lspconfig_utils.root_pattern("biome.json")(fname)
        end,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        on_attach = function(client)
          if not require("lspconfig.util").root_pattern("biome.json")(vim.fn.getcwd()) then
            client.server_capabilities.documentFormattingProvider = false
          end
        end,
      },
    },
  },
}
