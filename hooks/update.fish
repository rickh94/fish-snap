if test -f /usr/share/fish/completions/snap.fish
  if test -f $path/completions/snap.fish
    echo "Completion for snap is not built into fish. Removing local completion file"
    rm -rf $path/completions
  end
end
