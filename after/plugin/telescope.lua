local builtin = require('telescope.builtin')
local wk = require("which-key")

wk.register({
    f = {
        name = "file",
        f = { builtin.find_files, "Find file" },
        g = { builtin.git_files, "Find file in git repo" },
    }
}, { prefix = "<leader>" })

--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
