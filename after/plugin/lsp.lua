local lsp = require("lsp-zero")

local capabilities = require('lspconfig').capabilities

lsp.preset("recommended")

lsp.ensure_installed({
  'ccls',
  'rust_analyzer',
  'gopls',
  'pyright'
})

local on_attach = function(client, buffer)
    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.go',
        callback = function()
            vim.lsp.buf.format()
        end
    })
end

require('lspconfig').ccls.setup({})
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').gopls.setup{
    on_attach = on_attach,
    cmd = {"gopls"},
    settings = {
      gopls = {
        usePlaceholders = true,
        completeUnimported = true,
        analyses = {
          unusedparams = true,
          unusedresult = true,
          unusedwrite = true,
          unusedvariable = true
        },
        staticcheck = true,
      },
    },
}
require('lspconfig').pyright.setup{}

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<C-space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.setup()
