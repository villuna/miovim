vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "toggle file explorer" })
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "copy to system clipboard" } )

vim.keymap.set({ "i", "n", "t" }, "<C-`>", vim.cmd.ToggleTerm)
