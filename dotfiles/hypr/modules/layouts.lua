-- Dwindle Layout
hl.config({
    dwindle = {
        preserve_split = false,
        smart_split = true,
        smart_resizing = true,
        default_split_ratio = 1.0,
    },
})

-- Master Layout
hl.config({
    master = {
        new_status = "master",
        mfact = 0.55,
    },
})

-- Scrolling Layout
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
