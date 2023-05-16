local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

require("git-worktree").setup {
  -- change_directory_command = <str> -- default: "cd",
  -- update_on_change = <boolean> -- default: true,
  -- update_on_change_command = <str> -- default: "e .",
  -- clearjumps_on_change = <boolean> -- default: true,
  -- autopush = <boolean> -- default: false,
}

require("telescope").load_extension "git_worktree"

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  g = {
    name = "Python",
    w = { 
      name = "Worktree",
      c = {"<cmd> lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>", "create worktree"},
      l = {"<cmd> lua require('telescope').extensions.git_worktree.git_worktrees()<cr>", "list git_worktrees"},
        -- <Enter> - switches to that worktree
        -- <c-d> - deletes that worktree
        -- <c-f> - toggles forcing of the next deletion

    },
  },
}

which_key.register(mappings, opts)
