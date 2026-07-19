# ~/.config/fish/config.fish

# === Homebrew ===
# NOTE: /opt/homebrew is ARM64 Mac specific. Intel Macs use /usr/local.
/opt/homebrew/bin/brew shellenv | source

# === Conda ===
# NOTE: Path /opt/miniconda3 is machine-specific. Adjust on new machines.
if test -f /opt/miniconda3/bin/conda
    eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/miniconda3/bin" $PATH
    end
end

# === PATH ===
# NOTE: Herd, Antigravity, and the Homebrew fzf path are machine-specific.
# Review and adjust on new machines.
fish_add_path ~/.local/bin
fish_add_path ~/.config/herd-lite/bin
fish_add_path ~/.antigravity/antigravity/bin
fish_add_path ~/.antigravity-ide/antigravity-ide/bin
fish_add_path /opt/homebrew/opt/fzf/bin

# === PHP (Herd) ===
set -gx PHP_INI_SCAN_DIR ~/.config/herd-lite/bin

# === fzf ===
fzf --fish | source

# === Git prompt ===
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3
