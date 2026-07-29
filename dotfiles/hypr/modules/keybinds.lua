---------------------
---- KEYBINDINGS ----
---------------------

-- Main modifier (Windows/Super key)
mainMod = "SUPER"

--------------------------------------------------
-- APPLICATIONS
--------------------------------------------------

-- Terminal
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))

-- Application launcher (Fuzzel)
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

-- File manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))

-- Web browser
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("google-chrome-stable"))

-- Audio mixer
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pwvucontrol"))

-- Bluetooth manager
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("blueman-manager"))

-- Lock screen
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- System monitor
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("kitty -e btop"))

--------------------------------------------------
-- HYPRLAND
--------------------------------------------------

-- Reload Hyprland configuration
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))

-- Power menu
hl.bind(mainMod .. " + SHIFT + M",
    hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

--------------------------------------------------
-- WINDOW MANAGEMENT
--------------------------------------------------

-- Close focused window
hl.bind(mainMod .. " + C", hl.dsp.window.close())

-- Toggle floating
hl.bind(mainMod .. " + F",
    hl.dsp.window.float({ action = "toggle" })
)

-- Toggle pseudo mode (Dwindle layout)
hl.bind(mainMod .. " + P",
    hl.dsp.window.pseudo()
)

-- Toggle split direction (Dwindle layout)
hl.bind(mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)

-- Toggle fullscreen
hl.bind(mainMod .. " + RETURN",
    hl.dsp.window.fullscreen({ action = "toggle" })
)

--------------------------------------------------
-- WINDOW FOCUS
--------------------------------------------------

hl.bind(mainMod .. " + left",
    hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + right",
    hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + up",
    hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + down",
    hl.dsp.focus({ direction = "down" }))

--------------------------------------------------
-- WORKSPACES
--------------------------------------------------

-- Switch to workspace
-- Move focused window with Shift

for i = 1, 10 do
    local key = i % 10

    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i })
    )
end

--------------------------------------------------
-- SPECIAL WORKSPACE (SCRATCHPAD)
--------------------------------------------------

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({ workspace = "special:magic" })
)

--------------------------------------------------
-- WORKSPACE CYCLING
--------------------------------------------------

-- Mouse wheel
hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)

--------------------------------------------------
-- MOUSE
--------------------------------------------------

-- Move floating window
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

-- Resize floating window
hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)

--------------------------------------------------
-- CLIPBOARD
--------------------------------------------------

hl.bind(
    mainMod .. " + V",
    hl.dsp.exec_cmd(
        "cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"
    )
)

--------------------------------------------------
-- AUDIO
--------------------------------------------------

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true }
)

--------------------------------------------------
-- BRIGHTNESS
--------------------------------------------------

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
    { locked = true, repeating = true }
)

--------------------------------------------------
-- MEDIA KEYS
--------------------------------------------------

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }
)

--------------------------------------------------
-- SCREENSHOTS
--------------------------------------------------

-- Selected region
hl.bind(
    "Print",
    hl.dsp.exec_cmd(
        "mkdir -p ~/Pictures/Screenshots && " ..
        "grim -g \"$(slurp)\" - | tee ~/Pictures/Screenshots/$(date +'%F_%H-%M-%S').png | wl-copy"
    )
)

-- Entire screen
hl.bind(
    "SHIFT + Print",
    hl.dsp.exec_cmd(
        "mkdir -p ~/Pictures/Screenshots && " ..
        "grim - | tee ~/Pictures/Screenshots/$(date +'%F_%H-%M-%S').png | wl-copy"
    )
)