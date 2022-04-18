Hooks:PostHook( EquipmentsTweakData, "init", "pal_real_custom_equipments", function(self, tweak_data)

	self.specials.fuel_jumper_cable = {
		sync_possession = true,
		icon = "equipment_electrical",
		text_id = "hud_equipment_fuel_jumper_cable"
	}

	self.specials.fuel_winch_part = {
		sync_possession = true,
		icon = "equipment_drillfix",
		text_id = "hud_equipment_fuel_winch_part"
	}
end)