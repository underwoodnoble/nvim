return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            print("Copilot configuration loaded")
            require("copilot").setup({
                panel = {
                    enabled = true,
                    auto_refresh = false,
                    keymap = {
                        jump_prev = "[[",
                        jump_next = "]]",
                        accept = "<CR>",
                        refresh = "gr",
                        open = "<M-CR>",
                    },
                    layout = {
                        position = "bottom", -- | top | left | right | horizontal | vertical
                        ratio = 0.4,
                    },
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = false,
                    hide_during_completion = true,
                    debounce = 75,
                    keymap = {
                        accept = "<C-l>",
                        accept_word = "<C-w>",
                        accept_line = "<C-e>",
                        next = "<C-n>",
                        prev = "<C-p>",
                        dismiss = "<C-]>",
                    },
                },
                filetypes = {
                    yaml = false,
                    markdown = false,
                    help = false,
                    gitcommit = false,
                    gitrebase = false,
                    hgcommit = false,
                    svn = false,
                    cvs = false,
                    ["."] = false,
                },
                copilot_node_command = "node", -- Node.js version must be > 18.x
                server_opts_overrides = {},
            })
        end,
    },
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
        opts = {
            provider = "copilot",
            copilot = {
                model = "claude-3.7-sonnet",
                -- max_tokens = 4096,
            },
            auto_suggestions_provider = "copilot",
            behaviour = {
                auto_suggestions = false,
                auto_set_highlight_group = true,
                auto_set_keymaps = true,
                auto_apply_diff_after_generation = false,
                support_paste_from_clipboard = false,
                minimize_diff = true,
            },
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = "make",
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below dependencies are optional,
            "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
            "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
            "zbirenbaum/copilot.lua", -- for providers='copilot'
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                -- Make sure to set this up properly if you have lazy=true
                "MeanderingProgrammer/render-markdown.nvim",
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    },
    {
        "ravitemer/mcphub.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
        },
        -- cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
        build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
        config = function()
            require("mcphub").setup({
                -- Required options
                port = 3000, -- Port for MCP Hub server
                config = vim.fn.expand("~/mcpservers.json"), -- Absolute path to config file

                -- Optional options
                on_ready = function(hub)
                    -- Called when hub is ready
                end,
                on_error = function(err)
                    -- Called on errors
                end,
                shutdown_delay = 0, -- Wait 0ms before shutting down server after last client exits
                log = {
                    level = vim.log.levels.WARN,
                    to_file = false,
                    file_path = nil,
                    prefix = "MCPHub",
                },
            })
        end,
    },
}
