require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd", "hydra_lsp", "ruff_lsp", "tsserver", "html", "cssls" }
})

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)


require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

require("lspconfig").lua_ls.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").hydra_lsp.setup({})
require("lspconfig").ruff_lsp.setup({})
require("lspconfig").html.setup({})
require("lspconfig").cssls.setup({})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<space>D', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<space>i', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<c-s>', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
