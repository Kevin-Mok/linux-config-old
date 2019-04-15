# login to X {{{ #

if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
set -x GPG_TTY (tty)

# }}} login to X #

# fish-specific {{{ #

fish_vi_key_bindings
set -x EDITOR nvim 
set -x VISUAL nvim 
set -U fish_help_browser firefox 

builtin cd $last_dir
bind \ce edit_command_buffer
bind \cr forward-word

chezmoi apply
/home/kevin/scripts/sync-shortcuts
source /home/kevin/.config/fish/key_abbr.fish
# set -U fish_fxn_dir "/home/kevin/linux-config/fish/.config/fish/functions"
set -U fish_fxn_dir "/home/kevin/.config/fish/functions"
abbr ff "cd $fish_fxn_dir"
for fxn in (find $fish_fxn_dir -name '*.fish')
	source $fxn
end
abbr rf "chezmoi apply && source ~/.config/fish/config.fish"
abbr rfs "sync-shortcuts && chezmoi apply && source ~/.config/fish/config.fish"
abbr xf "fish_config"
abbr f. "cd .."
abbr f.. "cd ../.."
abbr mt "math"

# }}} fish-specific #

# universal var's {{{ #

# spv
set -U spv_dir "/home/kevin/coding/spotify-lib-vis"
set -U mfs_dir "/home/kevin/coding/mf-site"

set -x PATH $PATH /home/kevin/scripts /home/kevin/scripts/colors /home/kevin/go/bin
set -x PASSWORD_STORE_CLIP_TIME 120
set -xU XSET_RATE 90
set -xU XSET_DELAY 200
# causes xmodmap to have issues when opening terminal sometimes
# xmodmap ~/.Xmodmap && xset r rate $XSET_DELAY $XSET_RATE
# xset r rate $XSET_DELAY $XSET_RATE

set -U BROWSER "chromium"

# }}} universal var's #

# fxn abbr's {{{ #

abbr ag "grep-aliases"
abbr bq "benq-brightness"
abbr cpc "copy cat"
abbr cpe "copy echo"
abbr cpp "copy echo (pwd)"
abbr cff "create-fish-function"
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
abbr pgr "grep-pdf"
abbr pgrf "grep-pdf-file"
abbr rs "redshift-set"
abbr ut "unix-timestamp"
abbr uzr "unzip-rm"

# }}} fxn abbr's #

abbr hm "cd $mfs_dir && hugo serve -D --disableFastRender"

# school {{{ #

# 309
# abbr r0t "./revert-e3-json restaurants"
# abbr r0s "./revert-e3-json reservations"

# 369
abbr grc "grep-c"
abbr grh "grep-headers"
abbr rgh "rg-headers"

abbr r6 "run-a4 h e"

# abbr r6 "run-a3 f d o"
# abbr r6g "run-a3 f d g"
# abbr r6s "run-a3 s c o"
# abbr g6 "source $fish_fxn_dir/369/a3/gdb-a3-break.fish && gdb-a3-break c c"

# }}} school #
