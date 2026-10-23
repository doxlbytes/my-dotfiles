---------------------
---- APPEARANCE ----
---------------------

hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 6,

        border_size = 1,

        col = {
            active_border   = "#E4E4E4",
            inactive_border = "#303030",
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 0,
        --rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "rgba(00000040)",
        },

        blur = {
            enabled   = true,
            size      = 4,
            passes    = 2,
            new_optimizations = true,
            xray      = false,
        },
    },
})
