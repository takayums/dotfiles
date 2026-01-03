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
        "eslint_d",
        "typescript-language-server",
        "vue-language-server",
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
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            completions = {
              completFunctionCalls = true,
            },
          },
        },
        volar = {
          filetypes = {
            "vue",
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
          },
          settings = {
            vue = {
              hybridMode = true,
            },
          },
        },
        eslint = {},
        html = {},
        cssls = {},
        jsonls = {},
      },
    },
  },
}
