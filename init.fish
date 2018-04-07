#!/usr/bin/env fish
set -l snapscript (grep -l snappy /etc/profile.d/*)
if test -f $snapscript
  bass "source $snapscript"
else
  echo "Cannot find snap profile script"
end
