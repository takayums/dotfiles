return {

  -- Mason Config
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "prettierd",
        "black",
        "gofumpt",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstall = "✗",
        },
      },
    },
  },
  {
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "gopls",
          "pyright",
          "tailwindcss",
          "cssls",
          "astro",
          "emmet_ls",
          "lua_ls",
          "ts_ls",
          "jsonls",
        },
      },
      config = function() end,
    },
  },
}
