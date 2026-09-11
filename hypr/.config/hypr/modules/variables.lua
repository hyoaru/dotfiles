hl.config({
    general = {
        gaps_in     = 6,
        gaps_out    = 12,
        border_size = 2,
        col         = {
            active_border   = { colors = { "rgba(595959aa)", "rgba(FFFFFFaa)" }, angle = 45 },
            inactive_border = "rgba(59595900)",
        },
        resize_on_border = true,
        allow_tearing    = false,
        layout           = "dwindle",
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    misc = {
        font_family           = "Noto Sans",
        splash_font_family    = "Noto Sans",
        disable_hyprland_logo = true,
        focus_on_activate     = true,
    },
})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})
