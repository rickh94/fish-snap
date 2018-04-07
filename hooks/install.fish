echo "Installing bass to source needed profile."
omf install https://github.com/edc/bass
if not test -f /usr/share/fish/completions/snap.fish
  echo "downloading completions file"
  mkdir $path/completions
  curl -L https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/snap.fish > $path/completions/snap.fish
end
echo "You will need to log out and back in to detect all snap programs"
