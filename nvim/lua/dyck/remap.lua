local nnoremap = require("dyck.keymap").nnoremap
local inoremap = require("dyck.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<cr>")
nnoremap('<leader>ev', '<cmd>split ' .. vim.fn.call('stdpath', {'config'}) .. '<cr>');

inoremap("jk", "<esc>")
