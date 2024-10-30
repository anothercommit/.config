return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = true,
    formatters = {
      deno_fmt = {
        command = 'deno fmt',
      },
    },
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
      javascript = { 'prettierd' },
      javascriptreact = { 'prettierd' },
      json = { 'deno_fmt' },
      html = { 'prettierd' },
      css = { 'prettierd' },
    },
  },
}
