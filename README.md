# Dotfiles

Personal dotfiles for my development environment managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

GNU Stow is required to have these dotfiles installed. Clone the repository and use stow to create the necessary symlinks.

```bash
# Clone the repository
git clone https://github.com/jiji/dotfiles.git ~/dotfiles

# Stow the dotfiles
cd dotfiles
stow */
```

This will create symlinks for the nvim and tmux configurations in home directory.

## Neovim Configuration

Neovim configuration based on [LazyVim](https://www.lazyvim.org/).

### Plugins

**UI**

*   [fullerene.nvim](https://github.com/steguiosaur/fullerene.nvim): A dark, vibrant colorscheme.
*   [snacks.nvim](https://github.com/folke/snacks.nvim): A highly configurable dashboard.
*   [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim): A plugin that adds a "smear" effect to the cursor.
*   [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim): A file explorer that can be configured to show hidden files.

**Editing**

*   [oil.nvim](https://github.com/stevearc/oil.nvim): A file manager that feels like vim.
*   [text-case.nvim](https://github.com/johmsalas/text-case.nvim): A plugin for converting text to different cases.
*   [vim-visual-multi](https://github.com/mg979/vim-visual-multi): A plugin for multiple cursors.

**Terminal**

*   [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): A plugin for managing terminals in Neovim.

**Git**

*   [Neogit](https://github.com/NeogitOrg/neogit): A Magit-like interface for git.

**Web Development**

*   [rest.nvim](https://github.com/rest-nvim/rest.nvim): A fast HTTP client for Neovim.
*   [laravel.nvim](https://github.com/adalessa/laravel.nvim): A plugin for Laravel development.
*   Treesitter parsers for Blade, HTML, PHP, and Bash.
*   Laravel Pint as the default PHP formatter.
*   A collection of LSP servers for web development, including:
    *   `tailwindcss`
    *   `ruby_lsp`
    *   `emmet_language_server`
    *   `html`
    *   `tsserver`
    *   `eslint`
    *   `cssls`

**Other**

*   [neocord](https://github.com/IogaMaster/neocord): A plugin for Discord Rich Presence.
*   [suda.vim](https://github.com/lambdalisue/suda.vim): A plugin for editing files with sudo.

**Disabled Plugins**

*   [bufferline.nvim](https://github.com/akinsho/bufferline.nvim): A plugin for displaying buffers in the tabline.

## Tmux Configuration
*   `C-s` as the prefix.
*   Mouse support.
*   Vi-like keybindings for pane navigation.
*   [tpm](httpshttpss://github.com/tmux-plugins/tpm) for plugin management.
