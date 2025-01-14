return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "toml",
        "yaml",
        "rust",
        "scss",
        "sql",
        "svelte",
        "astro",
        "gitignore",
        "http",
        "dockerfile",
        "yaml",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = false,
      },
      rainbow = {
        enable = true,
        extended_mode = false, -- Solo brackets estándar ({}, (), [])
        max_file_lines = nil, -- Sin límite de líneas
        colors = {}, -- Usa colores predeterminados del esquema
        termcolors = {}, -- Usa colores predeterminados del esquema en terminal
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
