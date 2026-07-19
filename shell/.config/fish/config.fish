# ~/.config/fish/config.fish

# === Greeting ===
set fish_greeting

# === PATH ===
fish_add_path ~/.local/bin

# === fzf ===
fzf --fish | source

# === Git prompt ===
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3
