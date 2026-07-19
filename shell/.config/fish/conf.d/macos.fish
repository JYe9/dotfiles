if test (uname) = "Darwin"
    # === Homebrew ===
    # NOTE: /opt/homebrew is ARM64 Mac specific. Intel Macs use /usr/local.
    /opt/homebrew/bin/brew shellenv | source

    # === PATH ===
    fish_add_path ~/.config/herd-lite/bin
    fish_add_path /opt/homebrew/opt/fzf/bin

    # === PHP (Herd) ===
    set -gx PHP_INI_SCAN_DIR ~/.config/herd-lite/bin

    # === Conda ===
    # NOTE: Path /opt/miniconda3 is machine-specific.
    # On new machines, run `conda init fish` first.
    # This fallback ensures conda is on PATH even without init.
    if test -f /opt/miniconda3/etc/fish/conf.d/conda.fish
        source /opt/miniconda3/etc/fish/conf.d/conda.fish
    else if test -d /opt/miniconda3/bin
        fish_add_path /opt/miniconda3/bin
    end
end
