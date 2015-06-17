# DO NOT RUN THIS SCRIPT except on a new computer. It may modify settings and files without warning.

# eventually, trying to flesh this out to be
# one-stop-shopping for setting up the development environment on a new
# mac. Use symlinks to this repository rather than regular files so they can be shared!

# TODO depends on git, homebrew, coreutils from homebrew. Need another script/instructions to download all that stuff.

echo "DO NOT RUN THIS SCRIPT except on a new computer. It may modify settings and files without warning."
read -p "Continue anyway? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # creating dotfiles in home folder.
    # TODO decompose
    echo "Creating symlinks to dotfiles..."
    for f in dotfiles/.*
    do

	if [[ -f $f ]]; then # makes sure it's a regular file
	    echo "writing $(basename $f)"
	    ln -Fs `greadlink -f $f` ~/$(basename $f)
	fi
    done

    echo "Setup complete."
    # TODO homebrew, virtualenv, etc.
fi
