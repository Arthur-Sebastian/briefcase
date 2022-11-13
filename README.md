# briefcase

A repository for tracking dotfiles and other pieces of system configuration.

> It's dangerous to go alone. Take this...
> A dotfile briefcase for a travel salesman.

---

## Installation

First, clone the bare repository into home:

```console
git clone --bare git@github.com:arthur-sebastian/briefcase $HOME/.briefcase
```

Then checkout its contents:

```console
git --git-dir=$HOME/.briefcase --work-tree=$HOME checkout
```

Finally, run the included setup script to finalize the installation:

```console
chmod +x $HOME/.briefcase-utils/setup.sh && $HOME/.briefcase-utils/setup.sh
```

---

## Usage

To use version control with your dotfiles use the 'cfg' command alias inside the home directory, like so:

```console
cfg add ~/.config/nvim/
cfg commit
cfg push origin main
```

This alias appends required flags to 'git' command, so that it can work with the bare repository.
