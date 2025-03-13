----- LaTeX compile
-- Set the leader key to backslash (\)
vim.g.mapleader = "\\"  -- This sets the leader key to backslash

-- Define a custom command to compile the current LaTeX file using pdflatex
vim.api.nvim_create_user_command('CompileLatex', function()
  -- Save current file first
  vim.cmd('w')

  -- Get the current file's name
  local filename = vim.fn.expand('%')
  
  -- Run pdflatex to compile the LaTeX file
  vim.cmd('!' .. 'pdflatex ' .. filename)
end, {})

-- Bind the custom command to a key (e.g., <leader>c)
vim.api.nvim_set_keymap('n', '<leader>c', ':CompileLatex<CR>', { noremap = true, silent = true })
