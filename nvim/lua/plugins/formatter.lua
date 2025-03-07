return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = true,
    formatters = {
      deno_fmt = {
        command = 'deno fmt',
      },
    },

    format_after_save = function(bufnr)
      local disable_filetypes = { cpp = 'cpp' }
      return {
        timeout_ms = 1000,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,

    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff' },
      javascript = { 'biome' },
      javascriptreact = { 'biome' },
      typescriptreact = { 'biome' },
      typescript = { 'biome' },
      json = { 'biome' },
      jsonc = { 'biome' },
      html = { 'prettierd' },
      css = { 'prettierd' },
      -- cpp = { '' },
    },
  },
}
