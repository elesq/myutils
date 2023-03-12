local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings 
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3fc5ff ]])

nvimtree.setup({
  view = {
    side = "left",
    width = 45,
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  actions = {
    open_file = {
      resize_window = true,
      window_picker = {
        enable = false
      },
    },
  },

})

