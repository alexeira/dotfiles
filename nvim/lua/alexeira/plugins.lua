local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'nvim-lualine/lualine.nvim'
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true}) end,
    }
end)
