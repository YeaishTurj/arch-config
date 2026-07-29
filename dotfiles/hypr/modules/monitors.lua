------------------
---- MONITORS ----
------------------

-- Laptop display (Primary)
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = 1,
})

-- External monitor (Right)
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1366x768@59.79",
    position = "1920x0",
    scale    = 1,
})