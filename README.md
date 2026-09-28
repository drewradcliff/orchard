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
| `Space g…` | Git: `d` review changes, `f` file history, `s` status, `l` log, `b` branches |
| `]c` / `[c` | Next / previous change |
| `Space g…` on a change | `p` preview, `a` stage, `r` revert, `B` blame line |

Changed lines show a bar in the gutter. `ih` selects the change under the cursor, e.g. `vih` or `dih`.

In the review workspace (`Space g d`): `Enter` opens a file's diff, `-` stages or unstages it, `S` / `U` stage or unstage everything, `X` discards, `t` toggles side-by-side and inline, `q` closes, `g?` all keys. The diff engine downloads the first time you open it.

In the explorer: `a` add, `r` rename, `d` delete (to trash), `c` copy, `m` move, `o` open with default app, `/` filter, `?` all keys.

To update plugins, run `:lua vim.pack.update()`.

