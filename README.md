# orchard

Neovim with thoughtful defaults

## Requirements

- Neovim 0.12+
- [ripgrep](https://github.com/BurntSushi/ripgrep) and [fd](https://github.com/sharkdp/fd) for project search and explorer filtering: `brew install ripgrep fd`

## Install

```sh
git clone https://github.com/<you>/orchard.git
cd orchard
./install.sh
source ~/.zshrc
```

The installer:

- links `config/` to `~/.config/orchard`
- adds an `orch` alias to your shell
- installs plugins (pinned in `config/nvim-pack-lock.json`)

orchard runs under `NVIM_APPNAME=orchard`, so it never touches your existing `nvim` setup.

## Usage

```sh
orch .
```

Opening a folder shows the file explorer. `<leader>` is `Space`

| Key | Action |
| --- | --- |
| `Space Space` / `Cmd-P` | Find files |
| `Space /` | Search in project |
| `Space ,` | Switch buffer |
| `Space e` | Toggle file explorer |
| `Space f…` | Find: `f` files, `r` recent, `b` buffers, `g` git files, `c` config |
| `Space s…` | Search: `w` word, `b` buffer lines, `h` help, `k` keymaps, `c` commands, `d` diagnostics, `s` symbols, `u` undo, `r` resume |
| `Space g…` | Git: `s` status, `l` log, `b` branches |

In the explorer: `a` add, `r` rename, `d` delete (to trash), `c` copy, `m` move, `o` open with default app, `/` filter, `?` all keys.

To update plugins, run `:lua vim.pack.update()`.

