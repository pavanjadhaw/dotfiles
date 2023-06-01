return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        -- "docker-compose-language-service",
        -- "dockerfile-language-server",
        "eslint-lsp",
        "emmet-ls",
        "golangci-lint",
        "golangci-lint-langserver",
        "gopls",
        "graphql-language-service-cli",
        "html-lsp",
        "json-lsp",
        "prettierd",
        "shfmt",
        "stylua",
        "typescript-language-server",
        "lua-language-server",
        "prisma-language-server",
        "rust-analyzer",
        "sqlls",
        "tailwindcss-language-server",
        -- "yaml-language-server",
        "zls",
        "deno",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
}
