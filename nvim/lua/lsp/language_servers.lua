-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['clangd'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['html'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['cssls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['cmake'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['sumneko_lua'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['tsserver'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
