---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0.23, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- per-device configre
hl.device({
    name = "pixart-lenovo-usb-optical-mouse",
    sensitivity = -0.6,
})

hl.config({

    cursor = {
        no_hardware_cursors = 0,
    },

})