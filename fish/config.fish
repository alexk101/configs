source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/alexk101/.miniforge3/bin/conda
    eval /home/alexk101/.miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/alexk101/.miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/alexk101/.miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/alexk101/.miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE "/home/alexk101/.miniforge3/bin/mamba"
set -gx MAMBA_ROOT_PREFIX "/home/alexk101/.local/share/mamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
