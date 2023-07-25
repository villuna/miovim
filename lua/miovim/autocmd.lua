local custom_filetypes = {
    ["wgsl"] = "wgsl",
}

for ext, filetype in pairs(custom_filetypes) do
    vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
        pattern = "*." .. ext,
        command = "set filetype=" .. filetype,
    })
end

vim.api.nvim_create_autocmd({"BufWinEnter", "FileReadPost"}, {
    pattern = "*",
    command = "normal zR",
})
