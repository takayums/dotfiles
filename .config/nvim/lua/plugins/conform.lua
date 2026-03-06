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
      lua = { "stylua" },
      sh = { "shfmt" },
      python = { "black" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      prisma = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      markdown = { "prettier" },
      go = { "gofumpt", "goimports" },
    },
    format_on_save = true,
  },
}
