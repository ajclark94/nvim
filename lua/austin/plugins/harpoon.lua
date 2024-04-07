return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end)
    keymap.set("n", "<C-h>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    keymap.set("n", "<C-s>", function()
      harpoon:list():select(1)
    end)
    keymap.set("n", "<C-t>", function()
      harpoon:list():select(1)
    end)
    keymap.set("n", "<C-n>", function()
      harpoon:list():select(1)
    end)
    keymap.set("n", "<C-e>", function()
      harpoon:list():select(1)
    end)

    keymap.set("n", "<C-S-p>", function()
      harpoon:list():prev()
    end)
    keymap.set("n", "<C-S-n>", function()
      harpoon:list():next()
    end)

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    keymap.set("n", "<C-h>", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
  end,
}
