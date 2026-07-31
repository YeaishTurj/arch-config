---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        numlock_by_default = true,
        
        follow_mouse = 1,

        -- Mouse sensitivity (-1.0 to 1.0)
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,         -- Enable natural scrolling
            tap_to_click = true,           -- Tap to click
            disable_while_typing = true,   -- Prevent accidental touches while typing
            clickfinger_behavior = true,   -- 1 finger = left, 2 = right, 3 = middle
            middle_button_emulation = false,
            drag_lock = false,
        },
    },
})

-- Three-finger swipe between workspaces
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Example per-device configuration
-- Replace "epic-mouse-v1" with your actual mouse name if needed.
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})
