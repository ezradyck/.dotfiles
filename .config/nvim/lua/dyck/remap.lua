local nnoremap = require("dyck.keymap").nnoremap
local inoremap = require("dyck.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<cr>")
nnoremap('<leader>ev', '<cmd>split ' .. vim.fn.call('stdpath', {'config'}) .. '<cr>');
nnoremap('<leader>sv', '<cmd>source $MYVIMRC<cr>');

inoremap("jk", "<esc>")

nnoremap('<c-h>', '<cmd>wincmd h<cr>');
nnoremap('<c-j>', '<cmd>wincmd j<cr>');
nnoremap('<c-k>', '<cmd>wincmd k<cr>');
nnoremap('<c-l>', '<cmd>wincmd l<cr>');

nnoremap('<c-s>h', '<cmd>split<cr><cmd>wincmd j<cr>');
nnoremap('<c-s>v', '<cmd>vsplit<cr><cmd>wincmd l<cr>');

nnoremap('<c-z>', '<cmd>set invwrap<cr>');
inoremap('<c-z>', '<cmd>set invwrap<cr>');
