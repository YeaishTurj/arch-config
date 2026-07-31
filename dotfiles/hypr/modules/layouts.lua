-- Dwindle Layout
hl.config({
    dwindle = {
        preserve_split = true,
        smart_split = true,
        smart_resizing = true,
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
