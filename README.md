# dotfiles

Personal dotfiles, organized by topic (inspired by
[holman/dotfiles](https://github.com/holman/dotfiles)).

## Structure

Everything is grouped by topic — `zsh/`, `git/`, and so on. Add a new
topic just by adding a directory; the loaders below pick things up
automatically based on file naming, not a hardcoded list.

- **`bin/`** — anything in here is added to your `$PATH` and available
  everywhere.
- **`topic/*.zsh`** — automatically sourced into your shell.
- **`topic/path.zsh`** — loaded *first*, before other `.zsh` files.
  Use it to set up `$PATH`.
- **`topic/completion.zsh`** — loaded *last*. Use it for shell
  autocomplete setup.
- **`topic/*.symlink`** — symlinked into `$HOME` (extension dropped)
  when you run `script/bootstrap`. E.g. `zsh/zshrc.symlink` becomes
  `~/.zshrc`.
- **`topic/install.sh`** — run once via `script/install` (or `bin/dot`
  on macOS). Not auto-loaded, so it won't run every time you open a
  shell.

## Install (new machine)

```bash
git clone git@github.com:yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This symlinks every `*.symlink` file into `$HOME`, prompting you if a
file already exists (skip / overwrite / back up).

Before or after bootstrapping, edit the placeholder values —
particularly `git/gitconfig.symlink` (name/email).

## Keeping things in sync

```bash
cd ~/.dotfiles
git add -A
git commit -m "update zsh aliases"
git push
```

On another machine:

```bash
cd ~/.dotfiles
git pull
```

Since everything is symlinked, `git pull` is all you need — no
re-copying files.

## Machine-local secrets

Don't commit API keys or machine-specific secrets. `zsh/zshrc.symlink`
sources `~/.zshrc.local` at the end if it exists — put anything
sensitive or machine-only there. It's outside the repo, so it never
gets pushed.

## Adding a new topic

```bash
mkdir mytool
touch mytool/aliases.zsh   # auto-sourced
touch mytool/path.zsh      # auto-sourced first
touch mytool/config.symlink  # symlinked to ~/.config on bootstrap
```
