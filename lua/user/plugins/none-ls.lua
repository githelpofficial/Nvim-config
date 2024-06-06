local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.diagnostics.mypy.with({
			extra_args =  { "--config-file", "C:/users/karth/AppData/Local/nvim/mypy.ini" }
		}),
		null_ls.builtins.formatting.clang_format,
	},
})
