set -e
sh -c "$(curl -fsLS git.io/chezmoi)" && chezmoi init --apply ostrowr
