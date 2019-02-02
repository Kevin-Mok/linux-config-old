# login to X {{{ #

if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
set -x GPG_TTY (tty)

# }}} login to X #

# input
xset r rate 200 70
fish_vi_key_bindings
set -x EDITOR nvim 
set -x VISUAL nvim 

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
# (ruby -e 'print Gem.user_dir')/bin
set -x PATH $PATH /home/kevin/linux-config/scripts /home/kevin/go/bin
set -x PASSWORD_STORE_CLIP_TIME 120

# fxn abbr's
abbr ag "grep-aliases"
abbr ev "evince-silent"
abbr gcamp "git-amend-push"
abbr gdf "git-diff-files"
abbr gpsmt "git-push-multiple"
abbr hs "scan-history"
abbr ut "unix-timestamp"
abbr z "zathura-silent"
