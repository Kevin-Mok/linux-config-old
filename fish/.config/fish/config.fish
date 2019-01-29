# login to X {{{ #

if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
set -x GPG_TTY=$(tty)

# }}} login to X #

# input
xset r rate 200 60
fish_vi_key_bindings
set -x EDITOR /usr/bin/nvim 
set -x VISUAL /usr/bin/nvim 

builtin cd $last_dir

# fish-specific
source /home/kevin/.config/fish/key_abbr.fish
abbr xf "fish_config"
abbr f. "cd .."
abbr f.. "cd ../.."

# spv
set -U spv_dir "/home/kevin/coding/spotify-lib-vis"
source $spv_dir/src/api-keys.sh

# set -U PATH /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /home/kevin/linux-config/scripts
set -x PATH $PATH /home/kevin/linux-config/scripts
set -x PASSWORD_STORE_CLIP_TIME 120
