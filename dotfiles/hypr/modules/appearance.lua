-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 4,

        border_size = 2,

        col = {
            active_border = {
                colors = {
                    "rgba(7aa2f7ee)",
                    "rgba(bb9af7ee)"
                },
                angle = 45,
                gradient = true,
            },
            inactive_border = "rgba(414868ff)",
        },

        resize_on_border = true,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 8,
        rounding_power = 2.0,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        dim_inactive = false,
        screen_shader = "",

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = false,
        },
    },
})

