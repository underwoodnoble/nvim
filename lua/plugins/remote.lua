return {
  {
    "OscarCreator/rsync.nvim",
    build = "make",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("rsync").setup({
        reload_file_after_sync = true,
        project_config_path = ".nvim/rsync.toml",
        fugitive_sync = true,
        sync_on_save = true,
        on_exit = function(code, command) end,
        on_stderr = function(data, command) end,
      })
    end,
  },
}
