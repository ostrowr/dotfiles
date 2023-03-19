#!/bin/sh

set -eax

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ostrowr