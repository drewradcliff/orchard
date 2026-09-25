# orchard

Neovim with thoughtful defaults

## Requirements

- Neovim 0.12+

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

orchard runs under `NVIM_APPNAME=orchard`, so it never touches your existing `nvim` setup.

## Usage

```sh
orch .
```

