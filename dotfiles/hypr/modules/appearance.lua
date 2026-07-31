-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 6,

        border_size = 2,

        col = {
            active_border = {
                colors = {
                    "rgba(33ccffee)",
                    "rgba(00ff99ee)"
                },
                angle = 45,
            },
            inactive_border = "rgba(4c566aff)",
        },

        resize_on_border = true,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        rounding_power = 2.5,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = false,
        },
    },

    animations = {
        enabled = true,
    },
})
