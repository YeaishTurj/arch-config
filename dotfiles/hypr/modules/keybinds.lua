---------------------
---- KEYBINDINGS ----
---------------------

-- Main modifier (Windows/Super key)
mainMod = "SUPER"

--------------------------------------------------
-- APPLICATIONS
--------------------------------------------------

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("google-chrome-stable"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pwvucontrol"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("blueman-manager"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("kitty -e btop"))

--------------------------------------------------
-- HYPRLAND
--------------------------------------------------

hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))

hl.bind(mainMod .. " + SHIFT + M",
    hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

--------------------------------------------------
-- WINDOW MANAGEMENT
--------------------------------------------------

hl.bind("CTRL + space", hl.dsp.window.close())
hl.bind(mainMod .. " + C", hl.dsp.window.close())

hl.bind(mainMod .. " + F",
    hl.dsp.window.float({ action = "toggle" })
)

hl.bind(mainMod .. " + P",
    hl.dsp.window.pseudo()
)

hl.bind(mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)

hl.bind(mainMod .. " + RETURN",
    hl.dsp.window.fullscreen({ action = "toggle" })
)

--------------------------------------------------
-- WORKSPACE NAVIGATION / WINDOW FOCUS
--------------------------------------------------

-- Previous workspace
hl.bind(mainMod .. " + left",
    hl.dsp.focus({ workspace = "-1" })
)

-- Next workspace
hl.bind(mainMod .. " + right",
    hl.dsp.focus({ workspace = "+1" })
)

-- Focus window above
hl.bind(mainMod .. " + up",
    hl.dsp.focus({ direction = "up" })
)

-- Focus window below
hl.bind(mainMod .. " + down",
    hl.dsp.focus({ direction = "down" })
)

--------------------------------------------------
-- WORKSPACES
--------------------------------------------------

-- Number row
hl.bind(
    mainMod .. " + 1",
    hl.dsp.focus({ workspace = 1 })
)

hl.bind(
    mainMod .. " + SHIFT + 1",
    hl.dsp.window.move({ workspace = 1 })
)

hl.bind(
    mainMod .. " + 2",
    hl.dsp.focus({ workspace = 2 })
)

hl.bind(
    mainMod .. " + SHIFT + 2",
    hl.dsp.window.move({ workspace = 2 })
)

hl.bind(
    mainMod .. " + 3",
    hl.dsp.focus({ workspace = 3 })
)

hl.bind(
    mainMod .. " + SHIFT + 3",
    hl.dsp.window.move({ workspace = 3 })
)

hl.bind(
    mainMod .. " + 4",
    hl.dsp.focus({ workspace = 4 })
)

hl.bind(
    mainMod .. " + SHIFT + 4",
    hl.dsp.window.move({ workspace = 4 })
)

hl.bind(
    mainMod .. " + 5",
    hl.dsp.focus({ workspace = 5 })
)

hl.bind(
    mainMod .. " + SHIFT + 5",
    hl.dsp.window.move({ workspace = 5 })
)

hl.bind(
    mainMod .. " + 6",
    hl.dsp.focus({ workspace = 6 })
)

hl.bind(
    mainMod .. " + SHIFT + 6",
    hl.dsp.window.move({ workspace = 6 })
)

hl.bind(
    mainMod .. " + 7",
    hl.dsp.focus({ workspace = 7 })
)

hl.bind(
    mainMod .. " + SHIFT + 7",
    hl.dsp.window.move({ workspace = 7 })
)

hl.bind(
    mainMod .. " + 8",
    hl.dsp.focus({ workspace = 8 })
)

hl.bind(
    mainMod .. " + SHIFT + 8",
    hl.dsp.window.move({ workspace = 8 })
)

hl.bind(
    mainMod .. " + 9",
    hl.dsp.focus({ workspace = 9 })
)

hl.bind(
    mainMod .. " + SHIFT + 9",
    hl.dsp.window.move({ workspace = 9 })
)


--------------------------------------------------
-- NUMPAD WORKSPACES
--------------------------------------------------

-- NumPad 1 — keycode 87
hl.bind(
    mainMod .. " + code:87",
    hl.dsp.focus({ workspace = 1 })
)

hl.bind(
    mainMod .. " + SHIFT + code:87",
    hl.dsp.window.move({ workspace = 1 })
)


-- NumPad 2 — keycode 88
hl.bind(
    mainMod .. " + code:88",
    hl.dsp.focus({ workspace = 2 })
)

hl.bind(
    mainMod .. " + SHIFT + code:88",
    hl.dsp.window.move({ workspace = 2 })
)


-- NumPad 3 — keycode 89
hl.bind(
    mainMod .. " + code:89",
    hl.dsp.focus({ workspace = 3 })
)

hl.bind(
    mainMod .. " + SHIFT + code:89",
    hl.dsp.window.move({ workspace = 3 })
)


-- NumPad 4 — keycode 83
hl.bind(
    mainMod .. " + code:83",
    hl.dsp.focus({ workspace = 4 })
)

hl.bind(
    mainMod .. " + SHIFT + code:83",
    hl.dsp.window.move({ workspace = 4 })
)


-- NumPad 5 — keycode 84
hl.bind(
    mainMod .. " + code:84",
    hl.dsp.focus({ workspace = 5 })
)

hl.bind(
    mainMod .. " + SHIFT + code:84",
    hl.dsp.window.move({ workspace = 5 })
)


-- NumPad 6 — keycode 85
hl.bind(
    mainMod .. " + code:85",
    hl.dsp.focus({ workspace = 6 })
)

hl.bind(
    mainMod .. " + SHIFT + code:85",
    hl.dsp.window.move({ workspace = 6 })
)


-- NumPad 7 — keycode 79
hl.bind(
    mainMod .. " + code:79",
    hl.dsp.focus({ workspace = 7 })
)

hl.bind(
    mainMod .. " + SHIFT + code:79",
    hl.dsp.window.move({ workspace = 7 })
)


-- NumPad 8 — keycode 80
hl.bind(
    mainMod .. " + code:80",
    hl.dsp.focus({ workspace = 8 })
)

hl.bind(
    mainMod .. " + SHIFT + code:80",
    hl.dsp.window.move({ workspace = 8 })
)


-- NumPad 9 — keycode 81
hl.bind(
    mainMod .. " + code:81",
    hl.dsp.focus({ workspace = 9 })
)

hl.bind(
    mainMod .. " + SHIFT + code:81",
    hl.dsp.window.move({ workspace = 9 })
)

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

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

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
