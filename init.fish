#!/usr/bin/env fish
set -l snapscript (grep -l snappy /etc/profile.d/*)
set -l snappath (grep --color=never "export PATH" $snapscript | awk -F":" '{print $2}')
set -l snapdesktop (grep --color=never "export XDG" $snapscript | awk -F":" '{print $NF}' |sed 's/\"//')
if test -d $snappath;
and test -d $snapdesktop
  contains -- $snappath $PATH
  or set -gx PATH $PATH $snappath
  if not echo $XDG_DATA_DIRS |grep -q $snapdesktop
    set -gx XDG_DATA_DIRS /usr/share:/usr/local/share:$snapdesktop
  end
else
  echo "Cannot find snap bin or desktop files"
end
