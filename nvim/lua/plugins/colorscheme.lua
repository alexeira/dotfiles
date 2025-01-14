return {
  {
    "datsfilipe/vesper.nvim",
    config = function()
      require("vesper").setup({
        indentlines = false,
        transparent = true,
        italics = {
          comments = false,
          keywords = false,
          functions = false,
          strings = false,
          variables = false,
        },
      })
      require("vesper").colorscheme()
    end,
  },
}
