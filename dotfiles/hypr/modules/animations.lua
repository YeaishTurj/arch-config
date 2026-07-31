-- Animation Curves
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

hl.curve("quick", {
    type = "bezier",
    points = { {0.15, 0}, {0.1, 1} }
})

-- Slightly snappier spring
hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 110,
    dampening = 22,
})

-- Global
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 5,
    bezier = "default",
})

-- Borders
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 3,
    bezier = "easeOutQuint",
})

-- Windows
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 3,
    spring = "easy",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 2.7,
    spring = "easy",
    style = "popin 94%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.2,
    bezier = "easeInOutCubic",
    style = "popin 94%",
})

-- Fades
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.0,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.0,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 2.0,
    bezier = "quick",
})

-- Layers (notifications, launchers, etc.)
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 2.2,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 2.2,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.0,
    bezier = "linear",
    style = "fade",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.0,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.0,
    bezier = "almostLinear",
})

-- Workspaces
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.2,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.0,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.0,
    bezier = "easeInOutCubic",
    style = "slidefade",
})

-- Zoom
hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 3.5,
    bezier = "quick",
})
