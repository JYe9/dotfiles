# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── editor/        # Neovim config (LazyVim-based, gruvbox theme)
│   └── .config/nvim/lua/
│       ├── config/     # options, keymaps, autocmds
│       └── plugins/    # custom plugin specs
├── shell/         # tmux, fish shell
│   ├── .tmux.conf
│   └── .config/fish/
```

## Install

```bash
git clone git@github.com:JYe9/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow editor shell
```

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/) (`brew install stow`)
- [Neovim](https://neovim.io/) >= 0.10
- [fish](https://fishshell.com/) >= 3.0
- [tmux](https://github.com/tmux/tmux) >= 3.0
- [fzf](https://github.com/junegunn/fzf)
- A [Nerd Font](https://www.nerdfonts.com/) (for Neovim icons)

## Colorscheme

All tools share the same Gruvbox Dark Hard palette:

| Tool | Config |
|------|--------|
| Neovim | `ellisonleao/gruvbox.nvim` |
| tmux | Inline colors in `.tmux.conf` |
| fish | Inherits terminal theme |

## Notes

- Neovim is LazyVim-based. The `lazy-lock.json` is intentionally not tracked — run `:Lazy sync` after cloning to lock plugin versions.
- Some fish config paths (Homebrew, Conda, Antigravity) are machine-specific. Check `shell/.config/fish/config.fish` on a new machine.
- tmux prefix is `Ctrl-a` (not the default `Ctrl-b`).
