-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  [""] = {
    ["<A-v>"] = { '"+gP', desc = "Paste to clipboard" },
  },
  c = {
    ["<A-v>"] = { "<C-R>+", desc = "Paste to clipboard" },
  },
  i = {
    ["<A-;>"] = { function () return vim.fn['codeium#Accept']() end, expr = true, desc = "Codeium: accept" },
    ["<A-l>"] = { function () return vim.fn['codeium#CycleCompletions'](1) end, expr = true, desc = "Codeium: next" },
    ["<A-j>"] = { function () return vim.fn['codeium#CycleCompletions'](-1) end, expr = true, desc = "Codeium: previous" },
    ["<A-k>"] = { function () return vim.fn['codeium#Clear']() end, expr = true, desc = "Codeium: clear" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["X"] = { "<cmd>Neotree toggle<cr>" , desc = "Toggle Neotree" },
    ["<Leader>z"] = { "<cmd>Neotree source=filesystem<cr>" , desc = "Neotree filesystem tab" },
    ["<Leader>a"] = { "<cmd>Neotree source=buffers<cr>" , desc = "Neotree buffers tab" },
    ["<leader><leader>"] = { require("telescope.builtin").buffers , desc = "Telescope buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["<"] = false,
    [">"] = false,
    ["<A-x>"] = { '"+x', desc = "Cut to clipboard", noremap=true },
    ["<A-S-x>"] = { '"+x', desc = "Cut to clipboard", noremap=true },
    ["<A-c>"] = { '"+y', desc = "Copy to clipboard", noremap=true },
    ["<A-S-c>"] = { '"+y', desc = "Copy to clipboard", noremap=true },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}