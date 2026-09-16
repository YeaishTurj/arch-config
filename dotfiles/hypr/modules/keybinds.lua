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
    hl.dsp.exec_cmd("wlogout --buttons-per-row 3 --column-spacing 24 --row-spacing 24")
)

--------------------------------------------------
-- WINDOW MANAGEMENT
--------------------------------------------------

hl.bind("ALT + space", hl.dsp.window.close())
hl.bind(mainMod .. " + C", hl.dsp.window.close())

hl.bind(mainMod .. " + F",
    hl.dsp.window.float({ action = "toggle" })
)

hl.bind(mainMod .. " + P",
    hl.dsp.window.pin()
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

-- Number row 1–9
for i = 1, 9 do
    hl.bind(
        mainMod .. " + " .. i,
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. i,
        hl.dsp.window.move({ workspace = i })
    )
end


--------------------------------------------------
-- NUMPAD WORKSPACES
--------------------------------------------------

-- NumPad 1–9 (keycodes from wev)
local numpad_codes = { 87, 88, 89, 83, 84, 85, 79, 80, 81 }

for i = 1, 9 do
    hl.bind(
        mainMod .. " + code:" .. numpad_codes[i],
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + code:" .. numpad_codes[i],
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
