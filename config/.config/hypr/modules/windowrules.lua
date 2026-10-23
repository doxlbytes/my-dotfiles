--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

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

-- Floating window for spe apps
hl.window_rule({
    name = "Blueman",
    match = {
        class = "^blueman-manager$",
    },

    float = true,
    center = true,
    size = "480 520",
})

hl.window_rule({
    name = "Pavucontrol",
    match = {
        class = "^org.pulseaudio.pavucontrol$",
    },

    float = true,
    center = true,
    size = "480 520",
})

hl.window_rule({
    name = "Network Manager",
    match = {
        class = "^nm-connection-editor$",
    },

    float = true,
    center = true,
    size = "480 520",
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Windows opacity
hl.window_rule({name = "Dolphin", match = {class = "^org.kde.dolphin$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Kitty", match = {class = "^kitty$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Foot", match = {class = "^foot$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Ghostty", match = {class = "^ghostty$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Blueman-manager", match = {class = "^blueman-manager$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Network Connections", match = {class = "^nm-connection-editor$"}, opacity = "0.80 0.70"})
hl.window_rule({name = "Volume Control", match = {class = "^org.pulseaudio.pavucontrol$"}, opacity = "0.80 0.70"})

-- Layer rule
hl.layer_rule({
    name = "notification-animation",
    match = {namespace = "swaync-control-center"},
    animation = "slide right"
})

hl.layer_rule({
    name = "rofi-animation",
    match = {namespace = "rofi"},
    animation = "slide bottom"
})

hl.layer_rule({
    name = "wleave-animation",
    match = {namespace = "wleave"},
    animation = "fadeLayers"
})

hl.layer_rule({

    name = "wleave-blur",

    match = {
        namespace = "wleave",
    },

    blur = true,

})