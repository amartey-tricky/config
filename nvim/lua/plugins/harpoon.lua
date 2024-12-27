return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add buffer to harpoon" })

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle harpoon quick menu" })

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Select first entry" })

		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Select second entry" })

		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "Select third entry" })

		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "Select fourth entry" })

		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, { desc = "Select fifth entry" })

		vim.keymap.set("n", "<leader>6", function()
			harpoon:list():select(6)
		end, { desc = "Select sixth entry" })

		vim.keymap.set("n", "<leader>7", function()
			harpoon:list():select(7)
		end, { desc = "Select seventh entry" })

		vim.keymap.set("n", "<leader>8", function()
			harpoon:list():select(8)
		end, { desc = "Select eighth entry" })

		vim.keymap.set("n", "<leader>9", function()
			harpoon:list():select(9)
		end, { desc = "Select ninth entry" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "Previous harpoon entry" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "Next harpoon entry" })
	end,
}

