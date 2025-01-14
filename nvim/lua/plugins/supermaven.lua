return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-l>",
          accept_word = "<C-j>",
        },
        color = {
          suggestion_color = "#fff5ee",
          cterm = 244,
        },
      })
    end,
  },
}
