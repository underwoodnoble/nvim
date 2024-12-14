return {
  {
    "github/copilot.vim",
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
      "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
      { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
    },
    config = true,
    keys = {
      {
        "<Leader>ai",
        "<cmd>CodeCompanion<cr>",
        mode = { "n", "v" },
      },
      {
        "<Leader>aa",
        "<cmd>CodeCompanionActions<cr>",
        mode = { "n", "v" },
      },
      {
        "<Leader>ac",
        "<cmd>CodeCompanionChat Toggle<cr>",
        mode = { "n", "v" },
      },
      {
        "ga",
        "<cmd>CodeCompanionChat Add<cr>",
        mode = { "v" },
      },
    },
  },
}
