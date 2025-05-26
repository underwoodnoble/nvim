return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      ensure_installed = { "pyright" },
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
}
