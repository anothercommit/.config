return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = true,
    format_on_save = function(bufnr)
      local disable_filetypes = {}
      return {
        timeout_ms = 1000,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff_lsp' },
      javascript = { 'deno_fmt' },
      javascriptreact = { 'deno_fmt --indent-width 4' },
      json = { 'deno_fmt' },
      html = { 'prettierd' },
      css = { 'prettierd' },
    },
  },
}
