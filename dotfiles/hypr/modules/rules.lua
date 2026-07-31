--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Smart gaps (remove gaps/borders when only one tiled window)
hl.workspace_rule({
    workspace = "w[tv1]",
    gaps_out = 0,
    gaps_in = 0,
})

hl.window_rule({
    name = "no-gaps-single",
    match = {
        float = false,
        workspace = "w[tv1]",
    },

    border_size = 0,
    rounding = 0,
})

-- Ignore maximize requests
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

-- Fix XWayland drag issues
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})

-- Hyprland launcher
hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },

    float = true,
    move = "20 monitor_h-120",
})

-- Picture-in-Picture windows
hl.window_rule({
    name = "pip",
    match = {
        title = "Picture-in-Picture",
    },

    float = true,
    pin = true,
})

-- Common dialogs
hl.window_rule({
    name = "dialogs",
    match = {
        title = "Open File|Save File|Choose Files",
    },

    float = true,
    center = true,
})
