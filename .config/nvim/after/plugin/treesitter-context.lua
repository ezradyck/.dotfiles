

require('treesitter-context').setup({
    enable = true,
    throttle = true,
    max_lines = 0,
    patterns = {
        default = {
            'function',
            'method',
            'for',
            'while',
            'if', 
            'switch',
            'case',
        },

        rust = {
            'loop_expressions',
            'impl_item',
        },
    },
});
