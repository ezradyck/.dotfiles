local nnoremap = require("dyck.keymap").nnoremap
local inoremap = require("dyck.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<cr>")
nnoremap('<leader>ev', '<cmd>split ' .. vim.fn.call('stdpath', {'config'}) .. '<cr>');
nnoremap('<leader>sv', '<cmd>source $MYVIMRC<cr>');

inoremap("jk", "<esc>")
inoremap("<leader>qp", "<esc>pa");

nnoremap('<c-a>', 'ggVG');

nnoremap('<c-h>', '<cmd>wincmd h<cr>');
nnoremap('<c-j>', '<cmd>wincmd j<cr>');
nnoremap('<c-k>', '<cmd>wincmd k<cr>');
nnoremap('<c-l>', '<cmd>wincmd l<cr>');

nnoremap('<c-s>h', '<cmd>split<cr><cmd>wincmd j<cr>');
nnoremap('<c-s>v', '<cmd>vsplit<cr><cmd>wincmd l<cr>');

nnoremap('<c-z>', '<cmd>set invwrap<cr>');
inoremap('<c-z>', '<cmd>set invwrap<cr>');

nnoremap('<leader>tw', '<cmd>tabclose<cr>');
nnoremap('<leader>tn', '<cmd>tabnew<cr>');
nnoremap('<leader>td', ':bd term<c-a><cr>');

nnoremap('<leader>d', '"_d');

nnoremap('<leader>b', '<cmd>tabnew<cr><cmd>term msbuild /property:GenerateFullPaths=true /t:build /property:Configuration=Debug /m<cr>G');

local builtin = require('telescope.builtin')
nnoremap('<leader>ff', builtin.find_files)
nnoremap('<leader>fg', builtin.live_grep)
nnoremap('<leader>fb', builtin.buffers)
nnoremap('<leader>fh', builtin.help_tags)
