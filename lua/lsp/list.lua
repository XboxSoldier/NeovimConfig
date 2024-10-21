local servers = {
  -- BASH
  "bashls",

  -- C/C++
  "clangd",

  -- CMAKE
  "cmake",

  -- CSS
  "cssls",

  -- DOCKER
  "dockerls",

  -- DOCKER-COMPOSE
  "docker_compose_language_service",

  -- GO
  "gopls",

  -- HTML
  "html",

  -- JAVA
  "jdtls",

  -- JAVASCRIPT
  "eslint",

  -- TYPESCRIPT
  "ts_ls",

  -- JSON
  "jsonls",

  -- JSX
  "ast_grep",

  -- LATEX
  "texlab",

  -- LUA
  "lua_ls",

  -- MARKDOWN
  "marksman",

  -- Nginx
  "nginx_language_server",

  -- PHP
  "intelephense",

  -- POWERSHELL
  "powershell_es",

  -- PYTHON
  "pylsp",

  -- RUST; See Below

  -- SQL
  "sqlls",

  -- TOML
  "taplo",

  -- TYPST
  "typst_lsp",

  -- VIMSCRIPT
  "vimls",

  -- XML
  "lemminx",

  -- YAML
  "yamlls"
}

local full = {
  -- RUST
  "rust_analyzer"
}

for _, server in pairs(servers) do
  table.insert(full, server)
end

return {
  full = full,
  servers = servers,
}