-- Animation Curves (snappier than the stock defaults)
hl.curve("easeOutQuint", {
    type = "bezier",
    points = { {0.23, 1}, {0.32, 1} }
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = { {0.65, 0.05}, {0.36, 1} }
})

hl.curve("linear", {
    type = "bezier",
    points = { {0, 0}, {1, 1} }
})

hl.curve("almostLinear", {
    type = "bezier",
    points = { {0.5, 0.5}, {0.75, 1} }
})

-- Snappier than the default quick curve
hl.curve("quick", {
    type = "bezier",
    points = { {0.15, 0}, {0.1, 1} }
})

-- Lighter spring (less bounce, snappier settle)
hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 220,
    dampening = 30,
})

-- Global
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 6,
    bezier = "default",
})

-- Borders - very snappy
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
})

-- Windows (move/resize/focus) - snappy spring
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4,
    spring = "easy",
})

-- Window open - fast popin
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.0,
    spring = "easy",
    style = "popin 96%",
})

-- Window close - very fast fade
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 2.0,
    bezier = "easeInOutCubic",
    style = "popin 96%",
})

-- Fades - kept short
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.5,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.5,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.0,
    bezier = "quick",
})

-- Layers (swaync, fuzzel, wlogout) - snappy
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.5,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 3.5,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.5,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.5,
    bezier = "almostLinear",
})

-- Workspace switch - quick slidefade
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 2.0,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.6,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.6,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

-- Zoom (super+F) - very fast
hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 5.0,
    bezier = "quick",
})
