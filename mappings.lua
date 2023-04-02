-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>H"] = { ":wincmd h<CR>", desc = "move cursor to the left" },
    ["<leader>L"] = { ":wincmd l<CR>", desc = "move cursor to the right" },
    ["<TAB>"] = { ":bnext<CR>", desc = "go to the next buffer" },
    ["<S-TAB>"] = { ":bprevious<CR>", desc = "go to the previous buffer" },
    [",,"] = { "<ESC>A,<ESC>", desc = "add , at the end" },
    [";;"] = { "<ESC>A;<ESC>", desc = "add ; at the end" },
    ["dD"] = { "_dd", desc = "delete without copy" },
    ["cC"] = { "_cc", desc = "change without copy" },
    ["<C-c>"] = { '"+y', desc = "copy to clipboard" },
    ["<C-v>"] = { '"+gP', desc = "paste from clipboard" },
  },
  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "move line up" },
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "move line down" },
    ["<C-c>"] = { '"+y', desc = "copy to clipboard" },
    ["<C-v>"] = { '"+gP', desc = "paste from clipboard" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
