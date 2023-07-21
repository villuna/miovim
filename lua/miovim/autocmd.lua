local custom_filetypes = {
    ["wgsl"] = "wgsl",
}

for ext, filetype in pairs(custom_filetypes) do
    vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
        pattern = "*." .. ext,
        command = "set filetype=" .. filetype,
    })
end
