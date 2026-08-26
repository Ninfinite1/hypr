--- WINDOW RULES ----

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
  match = { class = "cs2" }, immediate = true
})

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Might use this someday

-- hl.window_rule({
--     name  = "move-hyprland-run",
--     match = { class = "hyprland-run" },
--     move  = "20 monitor_h-120",
--     float = true,
-- })
