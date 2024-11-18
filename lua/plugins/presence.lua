return {
  'vyfor/cord.nvim',
  build = './build ',
  event = 'VeryLazy',
  opts = {

 logo                = "auto",                     -- "auto" or url

    logo_tooltip        = nil,                        -- nil or string
    main_image          = "language",                 -- "language" or "logo"
    client_id           = "1157438221865717891",      -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer
    global_timer        = false,                      -- if set true, timer won't update when any event are triggered

    -- Rich Presence text options
   editing_text        = "Mexendo em %s 😎💅",           -- Texto quando um arquivo editável é carregado no buffer
file_explorer_text  = "Dando uma fuçada em %s 🔍👀",   -- Texto quando está explorando arquivos
git_commit_text     = "Fazendo aquela commitada 💾🔥", -- Texto quando está fazendo commit no git
plugin_manager_text = "Organizando plugins 💻✨",      -- Texto quando está gerenciando plugins
reading_text        = "Só dando uma lida em %s 📖😌", -- Texto quando um arquivo só de leitura está aberto
workspace_text      = "Trabalhando no projeto %s 🚀💼",-- Texto quando está em um repositório git
line_number_text    = "Linha %s de %s 📜📌",          -- Texto quando `enable_line_number` está ativado
terminal_text       = "Hackeando no Terminal 😈👩‍💻",  -- Texto quando usando o terminal
  }}
