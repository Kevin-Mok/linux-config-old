# login to X {{{ #

if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
set -x GPG_TTY (tty)

# }}} login to X #

# input
fish_vi_key_bindings
set -x EDITOR nvim 
set -x VISUAL nvim 

builtin cd $last_dir
bind \ce edit_command_buffer
bind \cr forward-word

# fish-specific
source /home/kevin/.config/fish/key_abbr.fish
abbr xf "fish_config"
abbr f. "cd .."
abbr f.. "cd ../.."

# spv
set -U spv_dir "/home/kevin/coding/spotify-lib-vis"
set -U mfs_dir "/home/kevin/coding/mf-site"
source $spv_dir/src/api-keys.sh

# set -U PATH /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /home/kevin/linux-config/scripts
# (ruby -e 'print Gem.user_dir')/bin
set -x PATH $PATH /home/kevin/linux-config/scripts /home/kevin/go/bin
set -x PASSWORD_STORE_CLIP_TIME 120
set -xU XSET_RATE 90
set -xU XSET_DELAY 200
# causes xmodmap to have issues when opening terminal sometimes
# xmodmap ~/.Xmodmap && xset r rate $XSET_DELAY $XSET_RATE
# xset r rate $XSET_DELAY $XSET_RATE

# fxn abbr's
abbr ag "grep-aliases"
abbr bq "benq-brightness"
abbr ev "evince-silent"
# git {{{ #

abbr gcamp "git-amend-push"
abbr gdf "git-diff-files"
abbr gpsmt "git-push-multiple"
abbr gremotes "git-mult-remotes"
abbr grmb "git-delete-branch"

# }}} git #
abbr hs "scan-history"
abbr hst "$EDITOR ~/.local/share/fish/fish_history"
abbr ut "unix-timestamp"
abbr z "zathura-silent"

set -U BROWSER "chromium"
abbr hm "cd $mfs_dir && hugo serve -D --disableFastRender"

abbr ga2 "gdb-a2"
abbr grc "grep-c"
abbr grh "grep-headers"
abbr cs "carsim"
