Hooks:PostHook(CharacterTweakData, "init", "fuel_init_characters", function(self)
	self.bolivian_indoors.no_arrest = true
	self.bolivian_indoors.no_retreat = true

    self.fuel_hostage = deep_clone(self.old_hoxton_mission)
	self.fuel_hostage.weapon =self.presets.weapon.good
    self.fuel_hostage.suppression = nil
	self.fuel_hostage.no_run_start = true
	self.fuel_hostage.no_run_stop = true
    self.fuel_hostage.intimidateable = false
    self.fuel_hostage.allowed_poses = {
		stand = true
	}
	self.fuel_hostage.use_radio = nil
    self.fuel_hostage.crouch_move = false
    self.fuel_hostage.calls_in = nil
    self.fuel_hostage.no_retreat = true
    self.fuel_hostage.surrender = false
    self.fuel_hostage.suspicious = nil
	self.fuel_hostage.ecm_vulnerability = 0
	self.fuel_hostage.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	self.fuel_hostage.is_escort = true
	self.fuel_hostage.escort_idle_talk = false
	self.fuel_hostage.escort_scared_dist = 0
	self.fuel_hostage.move_speed = self.presets.move_speed.fast


	self.fuel_boss = deep_clone(self.mobster_boss)
	self.fuel_boss.weapon = self.tank.weapon
	self.fuel_boss.HEALTH_INIT = 1200
	self.fuel_boss.move_speed = self.presets.move_speed.slow
	self.fuel_boss.no_run_start = true
	self.fuel_boss.no_run_stop = true
	self.fuel_boss.use_animation_on_fire_damage = false
	self.fuel_boss.damage.hurt_severity = self.presets.hurt_severities.only_light_hurt
	self.fuel_boss.flammable = true
	self.fuel_boss.immune_to_knock_down = true
	self.fuel_boss.immune_to_knockback = true
	self.fuel_boss.immune_to_concussion = true
	self.fuel_boss.headshot_dmg_mul = 1
	self.fuel_boss.no_headshot_add_mul = true
	self.fuel_boss.player_health_scaling_mul = 1.1
	
	self.fuel_boss_no_armor = deep_clone(self.hector_boss_no_armor)
	self.fuel_boss_no_armor.allowed_poses = {
		stand = true
	}
	self.fuel_boss_no_armor.crouch_move = false
end)

Hooks:PostHook(CharacterTweakData, "_set_normal", "fuel_characters_normal", function(self)
	self.fuel_boss.HEALTH_INIT = 75
	self.fuel_boss.player_health_scaling_mul = nil
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 0.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 0.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 0.3
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 0.3
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 0.25
end)

Hooks:PostHook(CharacterTweakData, "_set_hard", "fuel_characters_hard", function(self)
	self.fuel_boss.HEALTH_INIT = 150
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 0.75
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 0.75
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 0.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 0.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 0.25
end)

Hooks:PostHook(CharacterTweakData, "_set_overkill", "fuel_characters_vhard", function(self)
	self.fuel_boss.HEALTH_INIT = 300
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 1
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 1
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 0.75
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 0.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 0.25
end)

Hooks:PostHook(CharacterTweakData, "_set_overkill_145", "fuel_characters_ovk", function(self)
	self.fuel_boss.HEALTH_INIT = 600
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 2
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 1.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 1.25
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 1
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 0.5
end)

Hooks:PostHook(CharacterTweakData, "_set_easy_wish", "fuel_characters_mayhem", function(self)
	self.fuel_boss.HEALTH_INIT = 1200
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 3
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 2.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 2.25
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 2
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 1.5
end)

Hooks:PostHook(CharacterTweakData, "_set_overkill_290", "fuel_characters_dw", function(self)
	self.fuel_boss.HEALTH_INIT = 1200
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 3
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 2.75
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 2.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 2.25
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 2
end)

Hooks:PostHook(CharacterTweakData, "_set_sm_wish", "fuel_characters_ds", function(self)
	self.fuel_boss.HEALTH_INIT = 1200
	self.fuel_boss.weapon.is_rifle.FALLOFF[1].dmg_mul = 3
	self.fuel_boss.weapon.is_rifle.FALLOFF[2].dmg_mul = 2.75
	self.fuel_boss.weapon.is_rifle.FALLOFF[3].dmg_mul = 2.5
	self.fuel_boss.weapon.is_rifle.FALLOFF[4].dmg_mul = 2.25
	self.fuel_boss.weapon.is_rifle.FALLOFF[5].dmg_mul = 2
end)

local character_map_orig = Hooks:GetFunction(CharacterTweakData, "character_map")
Hooks:OverrideFunction(CharacterTweakData, "character_map", function(self, ...)

	local char_map = character_map_orig(self, ...)
	char_map.fuel = {
		path = "units/pd2_mod_fuel/characters/",
		list = {
			"ene_fuel_boss"
		}
	}
	return char_map
end)