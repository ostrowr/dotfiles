# Dotfiles

My humble dotfiles, and default software I like to install on my dev machnies.

Using [chezmoi](https://github.com/twpayne/chezmoi) to manage them across platforms.

To initalize a new machine, run

```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ostrowr
```

To update dotfiles, run

```
chezmoi -R update
```
