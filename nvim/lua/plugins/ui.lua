return {
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = function()
      local highlights = require("vesper").bufferline.highlights
      return {
        options = {
          mode = "tabs",
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
        highlights = highlights, -- Añadir los estilos de Vesper
      }
    end,
  },
  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "vesper",
      },
    },
  },
  -- animations
}
