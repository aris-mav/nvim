return {
    "samharju/yeet.nvim",
    dependencies = {
        "stevearc/dressing.nvim", -- optional, provides sane UX
    },
    version = "*", -- use the latest release, remove for master
    cmd = "Yeet",
    opts = {
        -- Send <CR> to channel after command for immediate execution.
        yeet_and_run = true,
        -- Send C-c before execution
        interrupt_before_yeet = false,
        -- Send 'clear<CR>' to channel before command for clean output.
        clear_before_yeet = false,
        -- Enable notify for yeets. Success notifications may be a little
        -- too much if you are using noice.nvim or fidget.nvim
        notify_on_success = false,
        -- Print warning if pane list could not be fetched, e.g. tmux not running.
        warn_tmux_not_running = false,
        -- Resolver for cache file
        cache = function()
            -- resolves project path and uses stdpath("cache")/yeet/<project>, see :h yeet
        end,
        -- Use cache.
        cache = true,
        -- Window options for cache float
        cache_window_opts = {
            relative = "editor",
            row = (vim.o.lines - 15) * 0.5,
            col = (vim.o.columns - math.ceil(0.6 * vim.o.columns)) * 0.5,
            width = math.ceil(0.6 * vim.o.columns),
            height = 15,
            border = "single",
            title = "Yeet",
        },
    },
    keys = {
        {
            -- Yeet visual selection. Useful sending core to a repl or running multiple commands.
            "<cr>",
            function() require("yeet").execute_selection(
                { clear_before_yeet = false, notify_on_success = false }
                ) 
            end,
            mode = { "v" },
        },
    }
}

