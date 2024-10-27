local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
end)

-- Replace the language servers listed here
-- with the ones you have installed
lsp.setup_servers({'rust_analyzer','tsserver', 'clangd', 'pylsp', 'lua_ls', 'html', 'cssls', 'emmet_ls', 'svelte', 'bashls', 'gopls', 'zls'})
