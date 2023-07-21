function debug_mode()
	if vim.o.diff == true then
    -- change to debug mode
		-- Set keybindings for the current buffer
		vim.api.nvim_buf_set_keymap(0, "n", "h", ":di fget 3", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "j", ":diffget 2", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "k", "]c", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "l", "[c", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "q", ":Gwq<CR>", { noremap = true })

    -- list dap debug points in bar

		-- Change the status line to show that we are in Gvsplit mode
		vim.api.nvim_win_set_option(0, "statusline", "Gvsplit mode")


	end
end

