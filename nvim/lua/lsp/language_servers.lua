
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

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
local home = vim.fn.getenv("HOME")
require('lspconfig')['jdtls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[0]),
	cmd = {
		"java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xms1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
		"-configuration",
		home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",
		"-data",
		home .. "/.local/share/nvim/mason/packages/jdtls/workspace",
	},
};
