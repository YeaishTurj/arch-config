local modes = {
    {
        name = "Fit",
        keepaspect = "yes",
        panscan = 0,
    },
    {
        name = "Fill",
        keepaspect = "yes",
        panscan = 1,
    },
    {
        name = "Stretch",
        keepaspect = "no",
        panscan = 0,
    },
}

local index = 1

local function apply(i)
    local m = modes[i]
    mp.set_property("keepaspect", m.keepaspect)
    mp.set_property_number("panscan", m.panscan)
    mp.osd_message("Aspect: " .. m.name)
end

mp.add_key_binding("s", "cycle-aspect", function()
    index = index % #modes + 1
    apply(index)
end)

mp.add_key_binding("d", "toggle-fill", function()
    local keep = mp.get_property("keepaspect")
    local pan = tonumber(mp.get_property("panscan"))

    if keep == "yes" and pan == 0 then
        index = 2 -- Fill
    else
        index = 1 -- Fit
    end

    apply(index)
end)

apply(index)
