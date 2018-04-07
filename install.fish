if not test -f /usr/share/fish/completions/snap.fish
  mkdir $path/completions
  curl -L https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/snap.fish > $path/completions/snap.fish
end
