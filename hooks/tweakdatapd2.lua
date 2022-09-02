Hooks:PostHook(TweakData, "_setup_point_of_no_returns", "fuel_setup_ponr", function(self)
	self.point_of_no_returns.alvarez_freeze = {
		text_id = "hud_assault_point_no_alvarez_in",
		texture = "guis/textures/pd2/hud_icon_noreturnbox",
		texture_rect = {
			0,
			0,
			32,
			32
		},
		color = Color(1, 0, 0.6, 1),
		timer_flash_color = Color(1, 1, 0.8, 0.2),
		attention_color = Color(1, 1, 1, 1),
		scale_box = true
	}
end)