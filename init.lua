----------- LaTeX Compiler -----------
vim.g.mapleader = "\\"
vim.api.nvim_create_user_command('CompileLatex', function()
  vim.cmd('w')
  local filename = vim.fn.expand('%')
  vim.fn.system('mkdir -p build')
  vim.cmd('!' .. 'latexmk -xelatex -outdir=build ' .. filename)
end, {})

vim.api.nvim_set_keymap('n', '<leader>l', ':CompileLatex<CR>', { noremap = true, silent = true })
