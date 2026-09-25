#!/usr/bin/env bash
# Links this repo's config into ~/.config/orchard and adds the `orch` alias.
# Safe to run more than once.
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APPNAME="orchard"
TARGET="${XDG_CONFIG_HOME:-$HOME/.config}/$APPNAME"

mkdir -p "$(dirname "$TARGET")"
if [ -L "$TARGET" ]; then
  ln -sfn "$REPO/config" "$TARGET"
elif [ -e "$TARGET" ]; then
  echo "error: $TARGET exists and is not a symlink; move it aside and re-run." >&2
  exit 1
else
  ln -s "$REPO/config" "$TARGET"
fi
echo "linked $TARGET -> $REPO/config"

case "$(basename "${SHELL:-}")" in
  zsh) RC="$HOME/.zshrc" ;;
  bash) RC="$HOME/.bashrc" ;;
  *) RC="$HOME/.profile" ;;
esac

ALIAS="alias orch='NVIM_APPNAME=$APPNAME nvim'"
if ! grep -qF "$ALIAS" "$RC" 2>/dev/null; then
  printf '\n# orchard\n%s\n' "$ALIAS" >>"$RC"
  echo "added alias to $RC (run: source $RC)"
else
  echo "alias already present in $RC"
fi
