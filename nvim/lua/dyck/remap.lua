vim.keymap.set('x', '<leader>f', vim.lsp.buf.format);

vim.keymap.set({ 'n', 'v' }, '<C-z>', '<cmd>set invwrap<cr>');

vim.keymap.set('n', '<c-h>', '<cmd>wincmd h<cr>');
vim.keymap.set('n', '<c-j>', '<cmd>wincmd j<cr>');
vim.keymap.set('n', '<c-k>', '<cmd>wincmd k<cr>');
vim.keymap.set('n', '<c-l>', '<cmd>wincmd l<cr>');

vim.keymap.set('i', 'jk', '<esc>');

vim.keymap.set('n', '<leader>pv', '<cmd>Ex<cr>');
vim.keymap.set('n', '<leader>ab', ':%bd<cr>');

vim.keymap.set('n', '<leader>ev', '<cmd>split ' .. vim.fn.stdpath('config') .. '<cr>');
vim.keymap.set('n', '<leader>sv', '<cmd>source $MYVIMRC<cr>');

-- trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)

-- telescope
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
