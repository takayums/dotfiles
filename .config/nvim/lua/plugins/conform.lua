return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      default_format_opts = {
        timeout_ms = 2000,
        async = false,
        quiet = false,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        python = { "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        go = { "gofumpt", "goimports" },
      },
    }
    return opts
  end,
}
