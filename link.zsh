for filename in dotfiles/.*;
do
	[[ -f $filename ]] && ln -s "$PWD/$filename" "$HOME/$(basename $filename)"
done
