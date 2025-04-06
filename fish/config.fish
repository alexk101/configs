source $HOME/.config/fish/cachy_config.fish

set -gx FORGE_ROOT /home/pwk/.miniforge
source $FORGE_ROOT/etc/fish/conf.d/conda.fish
source $FORGE_ROOT/etc/fish/conf.d/mamba.fish

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/pwk/.lmstudio/bin
starship init fish | source

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE "/home/pwk/.miniforge/bin/mamba"
set -gx MAMBA_ROOT_PREFIX "/home/pwk/.local/share/mamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
