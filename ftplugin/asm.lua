
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "asm-lsp", filetypes = { "asm","s","S" } },
-- }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "asm-lsp" })

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("asm-lsp", {
  root_dir = require("lspconfig/util").root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  filetypes = { "asm", "s", "S" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})


