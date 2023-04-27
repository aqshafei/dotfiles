--[[ 

licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
license"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
aS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
kIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

@author Aqeel AlShafei
@data November 20 2022
@modified November 20 2022

Global Keybindings:

Ctrl+\ to Open a Horizental Terminal

Normal Mode Keybindings:

Ctrl+o to toggle nvim-tree
Ctrl+p to Open Telescope
GD to show declaration
Gd to show definition
Gi to show implementation
Gr to show references
K to hover
C-k to show signature help0
Alt-Enter to show code action
]]

local builtin = require('telescope.builtin')
local def_opt = { noremap = true, silent = true }

-- Ctrl+o to toggle nvim-tree
vim.keymap.set('n', "<C-o>", ":NvimTreeToggle<CR>", def_opt)

-- Ctrl+p to Open Telescope
vim.keymap.set('n', "<C-p>", builtin.find_files, def_opt)

-- Ctrl+\ to Open a Horizental Terminal
-- vim.keymap.set("n", "<C-\\>", function() 
--     vim.api.nvim_command("botright 20sp | terminal")
--     vim.api.nvim_command("vertical resize 10")
-- end, def_opt)

-- Setup LSP keybindings

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, def_opt)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, def_opt)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, def_opt)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, def_opt)

vim.keymap.set({'n', 'v'}, "<A-Enter>", "<cmd>Lspsaga code_action<CR>", def_buf_opt)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, def_buf_opt)
vim.keymap.set('n', 'gd', "<cmd>Lspsaga peek_definition<CR>", def_buf_opt)
vim.keymap.set('n', 'gr', "<cmd>Lspsaga rename<CR>", def_buf_opt)
vim.keymap.set('n', 'gh', "<cmd>Lspsaga lsp_finder<CR>", def_buf_opt)
vim.keymap.set('n', 'K', "<cmd>Lspsaga hover_doc<CR>", def_buf_opt)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, def_buf_opt)
