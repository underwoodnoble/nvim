return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      ensure_installed = { "pyright", "ruff" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          disableOrganizeImports = true,
        },
        python = {
          analysis = {
            ignore = { "*" },
          },
        },
        clangd = {
          filetypes = { "c", "cpp", "cuda", "cu", "cuh" },
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.ruff,
      })
    end,
  },
}
