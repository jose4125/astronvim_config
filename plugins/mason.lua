-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "ansiblels",
        "astro",
        "bashls",
        "cssls",
        "cssmodules_ls",
        "docker_compose_language_service",
        "dockerls",
        "eslint",
        "graphql",
        "html",
        "jsonls",
        "lua_ls",
        "prismals",
        "pyright",
        "rescriptls",
        "sqlls",
        "stylelint_lsp",
        "svelte",
        "tsserver",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "ansiblelint",
        "checkmake",
        "cspell",
        "editorconfig_checker",
        "eslint",
        "flake8",
        "golangci_lint",
        "jsonlint",
        "markdownlint",
        "stylelint",
        "terraform_validate",
        "tsc",
        "yamllint",
        "black",
        "dart_format",
        "gofmt",
        "isort",
        "prettier",
        "rescript",
        "scalafmt",
        "terraform_fmt",
        "stylua",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
