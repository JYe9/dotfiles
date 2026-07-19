if test (uname) = "Linux"
    # === Conda ===
    if test -f ~/miniconda3/bin/conda
        eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
    else if test -f ~/miniconda3/etc/fish/conf.d/conda.fish
        . ~/miniconda3/etc/fish/conf.d/conda.fish
    end
end
