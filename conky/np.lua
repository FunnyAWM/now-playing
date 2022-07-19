conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 50,
    gap_y = 85,
    minimum_width = 125,
    maximum_width = 1200,
    minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = true,
    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = false,
    own_window_transparent_value = 20,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_running netease-cloud-music}${color yellow}${font Gotham Book:pixelsize=18}正在播放:
${color yellow}${font Gotham Book:pixelsize=15}
${color yellow}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p netease-cloud-music metadata title}${font Gotham:style=bold:pixelsize=10}
${color yellow}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p netease-cloud-music metadata artist}
]];