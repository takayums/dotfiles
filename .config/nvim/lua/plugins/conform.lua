return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      timeout_ms = 2500,
      async = false,
      quiet = false,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      -- lua
      lua = { "stylua" },
      -- shell script
      sh = { "shfmt" },
      -- html  and css
      html = { "prettier" },
      css = { "prettier" },
      -- Python Django
      python = { "black" },
      htmldjango = { "djlint" },
      -- Javascript
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      -- go
      go = { "gofumpt", "goimports" },
      -- makrdown
      markdown = { "prettier" },
      -- json
      json = { "prettier" },
      -- prisma
      prisma = { "prettier" },
      -- laravel php
      php = { "prettier" },
      blade = { "prettier" },
    },
    format_on_save = true,
  },
}
