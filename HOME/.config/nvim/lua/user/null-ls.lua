local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.cspell.with({
      extra_args = { "--config", "~/.config/cspell/cspell.json" },
      diagnostics_postprocess = function(diagnostic)
        diagnostic.severity = vim.diagnostic.severity.WARN
      end,
    }),
    null_ls.builtins.code_actions.cspell.with({
      extra_args = { "--config", "~/.config/cspell/cspell.json" },
    }),

    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
  },
})
