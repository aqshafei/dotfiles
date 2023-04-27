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

]]


-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    -- debounce_text_changes = 150,
}

-- CMake LSP
require('lspconfig')['cmake'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Clangd LSP
require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Python LSP
require('lspconfig')['pyright'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Typescript LSP
require('lspconfig')['tsserver'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Golang LSP
require('lspconfig')['gopls'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Rust LSP
require('lspconfig')['rust_analyzer'].setup {
    on_attach = on_attach,
    capabilities = capabilities,

    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
