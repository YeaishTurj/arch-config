------------------
---- WORKSPACES --
------------------

-- Laptop display: workspaces 1–5
for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "eDP-1",
        persistent = true,
    })
end

-- External display: workspaces 6–9
for i = 6, 9 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "HDMI-A-1",
        persistent = true,
    })
end
