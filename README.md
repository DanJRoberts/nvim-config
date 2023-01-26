# nvim-config

---

## Plugins

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim): plugin manager

### Look and Feel

- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim): colourscheme
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): filetree
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): icons for nvim-tree
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Powerline like status line
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): fuzzy finder
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim): depedency for telescope

### LSP

- [williamboman/williamboman/mason.nvim](https://github.com/williamboman/mason.nvim): lsp package manager
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): configurator for nvim LSP client
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim): lspconfig helper
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): syntax highlighter

### Auto Completion & Snippits

- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp): completion engine
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): nvim-cmp source for neovim LSP
- [L3MON4D3/luasnip](https://github.com/L3MON4D3/luasnip): snippit engine
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip): completion engine for Lua snip
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets): code snippets

---

## Linux Installation

Create vim config directory  

```shell
mkdir -p ~/.config/nvim
```  

Clone repo into config directory  

```shell
git clone https://github.com/DanJRoberts/nvim-config ~/.config/nvim
```  

Start Neovim

```shell  
nvim
```  
Once Neovim opens Sync Packages  
Note: Packersync will fail if unzip isn't installed on system.  

```viml
:PackerSync
```  

---

## Keymaps

## Misc (normal Mode )


| Map                | Function                   |
|-------------------:|:---------------------------|  
| `<space>`          | leader                     |  
| `<c-j>`            | Navigate to split below    |  
| `<Down>`           | Navigate to split below    |  
| `<c-k>`            | Navigate to split above    |  
| `<Up>`             | Navigate to split above    |  
| `<c-h>`            | Navigate to split to left  |  
| `<Left>`           | Navigate to split to left  |  
| `<c-l>`            | Navigate to split to right |  
| `<Right>`          | Navigate to split to right |  
| `<leader>h`        | clears search highlighting |  
| `<c-n>`            | Toggle nvim-tree           |  
| `<leader>h`        | clear search highlighting  |  
 
## Misc (insert Mode )
 
| Map                | Function                   |  
|-------------------:|:---------------------------|  
| `jk`               | exit insert mode           |  
 
## Code Completion Keymaps
 
| Map                | Function                   |  
|-------------------:|:---------------------------|  
| `<c-b>`            | Scroll -4                  |  
| `<c-f>`            | Scroll  4                  |   
| `<c-o>`            | complete                   |  
| `<CR>`             | confirm completion         |  
  
## LSP Keymaps
 
| Map                | Function                   |  
|-------------------:|:---------------------------|  
| `<leader>rn`       | rename symbol              |  
| `<leader>ca`       | code action                |  
| `gd`               | jump to definition         |  
| `gD`               | jump to declaration        |   
| `gi`               | jump to implementation     |   
| `K`                | open hover card            |   
 
## Telescope Keymaps

| Map                | Function                   |  
|-------------------:|:---------------------------|  
| `<leader>ff`       | find files                 |  
| `<leader>fg`       | live grep                  |  
| `<leader>fh`       | list of old files          |  
| `<leader><leader>` | list of old files          |  
