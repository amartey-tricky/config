return {
	"christoomey/vim-tmux-navigator",

	vim.keymap.set("n", "<C-h>", "<C-s>h", { desc = "Navigate left" }),
	vim.keymap.set("n", "<C-j>", "<C-s>j", { desc = "Navigate down" }),
	vim.keymap.set("n", "<C-k>", "<C-s>k", { desc = "Navigate up" }),
	vim.keymap.set("n", "<C-l>", "<C-s>l", { desc = "Navigate right" }),
}
