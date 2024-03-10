return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
    "3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle last<CR>", {})
    vim.keymap.set("n", "<F2>", ":Neotree toggle last<CR>", {})
		vim.keymap.set("n", "<leader>ef", ":Neotree buffers reveal float<CR>", {})
	end,
}
