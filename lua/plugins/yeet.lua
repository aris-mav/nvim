return {
    "samharju/yeet.nvim",
    dependencies = {
        "stevearc/dressing.nvim", -- optional, provides sane UX
    },
    version = "*", -- use the latest release, remove for master
    cmd = "Yeet",
    opts = {},
    keys = {
        {
            -- Yeet visual selection. Useful sending core to a repl or running multiple commands.
            "<A-y>",
            function() require("yeet").execute_selection(
                { clear_before_yeet = false, notify_on_success = false }
            ) 
        end,
        mode = { "v" },
    },
}
}

