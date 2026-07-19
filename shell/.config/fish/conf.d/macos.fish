if test (uname) = "Darwin"
    # === Homebrew ===
    # NOTE: /opt/homebrew is ARM64 Mac specific. Intel Macs use /usr/local.
    /opt/homebrew/bin/brew shellenv | source

    # === PATH ===
    fish_add_path ~/.config/herd-lite/bin
    fish_add_path /opt/homebrew/opt/fzf/bin

    # === PHP (Herd) ===
    set -gx PHP_INI_SCAN_DIR ~/.config/herd-lite/bin
end
