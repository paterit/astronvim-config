return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "svelte",
        "tsserver",
        "pyright",
        "jsonls",
        "html",
        "eslint",
        "rust_analyzer",
        "bashls",
        "angularls",
        "cssls",
        "tailwindcss",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettierd", "stylua", "ruff", "rustfmt", "shfmt", "black" },
    },
    keys = {
      {
        "<leader>lPr",
        function()
          local null_ls = require("null-ls")
          null_ls.enable({ name = "ruff" })
          null_ls.disable({ name = "isort" })
        end,
        desc = "Ruff on, isort off",
      },
      {
        "<leader>lPi",
        function()
          local null_ls = require("null-ls")
          null_ls.disable({ name = "ruff" })
          null_ls.enable({ name = "isort" })
        end,
        desc = "Ruff off, isort on",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python" },
    },
  },
}
