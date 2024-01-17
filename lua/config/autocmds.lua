-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- vim.cmd([[
--   autocmd FileType sql,mysql,psql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
-- ]])

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "sql", "mysql", "psql" },
--   callback = function()
--     require("cmp").setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
--   end,
-- })
