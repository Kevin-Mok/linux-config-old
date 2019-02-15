# input
fish_vi_key_bindings
set -x EDITOR nvim 
set -x VISUAL nvim 

builtin cd $last_dir
bind \ce edit_command_buffer

# fish-specific
source /home/kevin/.config/fish/key_abbr.fish
abbr xf "fish_config"
abbr f. "cd .."
abbr f.. "cd ../.."

set -x PATH $PATH /home/kevin/linux-config/scripts /home/kevin/go/bin
set -x PASSWORD_STORE_CLIP_TIME 120

# fxn abbr's
abbr ag "grep-aliases"
abbr ev "evince-silent"
# git {{{ #

abbr gcamp "git-amend-push"
abbr gdf "git-diff-files"
abbr gpsmt "git-push-multiple"
abbr grmb "git-delete-branch"

# }}} git #
abbr hs "scan-history"
abbr ut "unix-timestamp"
abbr z "zathura-silent"

set -U BROWSER "chromium"
abbr hm "cd $mfs_dir && hugo serve -D --disableFastRender"
