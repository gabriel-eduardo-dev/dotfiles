
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig')['vimls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
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
	settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'use', 'on_attach' }
            }
        }
    }
};
require('lspconfig')['tsserver'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['gradle_ls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['groovyls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['angularls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['intelephense'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
require('lspconfig')['bashls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
};
local home = vim.fn.getenv("HOME")
require('lspconfig')['jdtls'].setup{
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = vim.fs.dirname(vim.fs.find({'pom.xml', 'build.xml', 'build.gradle.kts', 'build.gradle', 'settings.gradle', 'gradlew', '.git', 'mvnw'}, { upward = true })[0]),
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
	settings = {
		java = {
			configuration = {
				runtimes = {
					{
						name = "JavaSE-17",
						path = "/usr/lib/jvm/java-17-openjdk-amd64",
					},
					{
						name = "JavaSE-1.8",
						path = "/usr/lib/jvm/java-8-openjdk-amd64",
					},
				},
				eclipse = {
					downloadSources = true,
				},
				configuration = {
					updateBuildConfiguration = "interactive",
				},
				maven = {
					downloadSources = true,
				},
				implementationsCodeLens = {
					enabled = true,
				},
				referencesCodeLens = {
					enabled = true,
				},
				references = {
					includeDecompiledSources = true,
				},
				inlayHints = {
					parameterNames = {
						enabled = "all", -- literals, all, none
					},
				},
				format = {
					enabled = false,
				}
			}
		}
	}
};
