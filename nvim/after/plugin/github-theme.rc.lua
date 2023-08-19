local status, g = pcall(require, 'github-theme')
if (not status) then return end

g.setup({
  options = {
    transparent = true
  }
})

vim.cmd('colorscheme github_dark')