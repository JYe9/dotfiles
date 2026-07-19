-- Jonhoo-style fzf-lua tweaks: compact window, proximity-sort, buffer search
return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        split = "belowright 10new",
        preview = {
          hidden = true,
        },
      },
      files = {
        file_icons = false,
        git_icons = true,
        _fzf_nth_devicons = true,
      },
      buffers = {
        file_icons = false,
        git_icons = true,
      },
      fzf_opts = {
        ["--layout"] = "default",
      },
    },
    config = function(_, opts)
      -- apply the opts
      require("fzf-lua").setup(opts)

      -- <C-p> for file search with proximity-sort
      -- prefers files closer to the current file
      vim.keymap.set("", "<C-p>", function()
        local fzf_opts = {}
        fzf_opts.cmd = "fd --color=never --hidden --type f --type l --exclude .git"
        local base = vim.fn.fnamemodify(vim.fn.expand("%"), ":h:.:S")
        if base ~= "." then
          -- proximity-sort is a tool by jonhoo: https://github.com/jonhoo/proximity-sort
          fzf_opts.cmd = fzf_opts.cmd
            .. (" | proximity-sort %s"):format(vim.fn.shellescape(vim.fn.expand("%")))
        end
        fzf_opts.fzf_opts = {
          ["--scheme"] = "path",
          ["--tiebreak"] = "index",
          ["--layout"] = "default",
        }
        require("fzf-lua").files(fzf_opts)
      end, { desc = "Find Files (Proximity-Sorted)" })

      -- <leader>; for buffer search with path-only display
      vim.keymap.set("n", "<leader>;", function()
        require("fzf-lua").buffers({
          fzf_opts = {
            ["--with-nth"] = "{-3..-2}",
            ["--nth"] = "-1",
            ["--delimiter"] = "[:\u{2002}]",
            ["--header-lines"] = "false",
          },
          header = false,
        })
      end, { desc = "Find Buffers" })
    end,
  },
}
