return {

  -- Mason Config
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "stylua",
        -- shell
        "shellcheck",
        "shfmt",
        -- javascript
        "typescript-language-server",
        "vue-language-server",
        -- eslint
        "eslint-lsp",
        -- python, django
        "flake8",
        "black",
        "django-language-server",
        "djlint",
        -- go
        "goimports",
        "gofumpt",
        -- prettier
        "prettierd",
        "prettier",
        -- astro
        "astro-language-server",
        -- c, c++
        "clang-format",
        "clangd",
        -- treesitter
        "tree-sitter-cli",
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
        -- go
        "gopls",
        -- python
        "pyright",
        -- tailwindcss
        "tailwindcss",
        "cssls",
        -- astro
        "astro",
        -- emmet
        "emmet_ls",
        -- lua
        "lua_ls",
        -- javascript
        "ts_ls",
        -- json
        "jsonls",
        -- prisma
        "prismals",
      },
    },
    config = function() end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Javascript, React Vue
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
        -- Linting
        eslint = {},
        -- Html, Css
        html = {},
        cssls = {},
        -- Json
        jsonls = {},
        -- Prisma
        prismals = {},
        -- Python Django
        pyright = {},
        djls = {
          djls = {
            cmd = { "djls", "serve" },
            filetypes = { "html", "htmldjango", "htmldjango" },
            root_markers = { "manage.py", "pyproject.toml", ".git" },
          },
        },
      },
    },
  },
}
