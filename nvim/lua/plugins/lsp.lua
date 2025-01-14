return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua", -- Formateador para Lua
        "selene", -- Linter para Lua
        "luacheck", -- Linter para Lua
        "shellcheck", -- Linter para scripts de shell
        "shfmt", -- Formateador para scripts de shell
        "tailwindcss-language-server", -- LSP para TailwindCSS
        "typescript-language-server", -- LSP para TypeScript
        "css-lsp", -- LSP para CSS
      })
    end,
  },
}
