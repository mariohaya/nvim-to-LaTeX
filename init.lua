----- LaTeX compile
-- Set the leader key to backslash (\)
vim.g.mapleader = "\\"  -- This sets the leader key to backslash

-- Define a custom command to compile the current LaTeX file using latexmk
vim.api.nvim_create_user_command('CompileLatex', function()
  -- Save current file first
  vim.cmd('w')

  -- Get the current file's name
  local filename = vim.fn.expand('%')

  -- Create the 'build' directory if it doesn't exist
  vim.fn.system('mkdir -p build')
  
  -- Run latexmk to compile the LaTeX file into PDF
  vim.cmd('!' .. 'latexmk -pdf -outdir=build ' .. filename)
end, {})

-- Bind the custom command to a key (e.g., <leader>l)
vim.api.nvim_set_keymap('n', '<leader>l', ':CompileLatex<CR>', { noremap = true, silent = true })
