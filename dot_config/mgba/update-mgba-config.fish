#!/usr/bin/fish

set mgba_config_dir "/home/kevin/.config/mgba"
set chez_dir "/home/kevin/linux-config/dot_config/mgba"
for ini_file in config qt
    cp "$mgba_config_dir/$ini_file.ini" "$chez_dir/$ini_file-tmpl.ini" 
end
