vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "asm-lsp" })

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("asm-lsp", {
  cmd = { "ansible-language-server", "--stdio" },
  root_dir = require("lspconfig/util").root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  single_file_support = true,
  filetypes = {
    "yaml.ansible",
  },
  settings = {
    ansible = {
      ansible = {
        path = "ansible",
        useFullyQualifiedCollectionNames = true,
      },
      ansibleLint = {
        enabled = true,
        path = "ansible-lint",
      },
      executionEnvironment = {
        enabled = false,
      },
      python = {
        interpreterPath = "python",
      },
      completion = {
        provideRedirectModules = true,
        provideModuleOptionAliases = true,
      },
    },
  },
})
