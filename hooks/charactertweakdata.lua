Hooks:PostHook(CharacterTweakData, "init", "fuel_init_characters", function(self)
	self.bolivian_indoors.no_arrest = true
	self.bolivian_indoors.no_retreat = true

    self.fuel_hostage = deep_clone(self.old_hoxton_mission)
	self.fuel_hostage.weapon.is_rifle = {
		aim_delay = {
			0.1,
			0.2
		},
		focus_delay = 4,
		focus_dis = 800,
		spread = 20,
		miss_dis = 40,
		RELOAD_SPEED = 1,
		melee_speed = 1,
		melee_dmg = 25,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 2500,
			far = 5000,
			close = 1000
		},
		autofire_rounds = {
			20,
			30
		},
		FALLOFF = {
			{
				dmg_mul = 3,
				r = 100,
				acc = {
					0.6,
					0.9
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3,
				r = 500,
				acc = {
					0.5,
					0.7
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					1,
					2,
					8
				}
			},
			{
				dmg_mul = 1.5,
				r = 1000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					3,
					6,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.2,
					0.5
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					2,
					2,
					1
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.1,
					0.35
				},
				recoil = {
					1,
					1.2
				},
				mode = {
					4,
					2,
					1,
					0
				}
			}
		}
	}
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
	self.fuel_hostage.escort_scared_dist = 100
	self.fuel_hostage.move_speed = self.presets.move_speed.fast


	self.fuel_boss = deep_clone(self.hector_boss)
	self.fuel_boss.move_speed = self.presets.move_speed.slow
	self.fuel_boss.use_animation_on_fire_damage = false
	self.fuel_boss.flammable = true
	self.fuel_boss.immune_to_knock_down = true
	self.fuel_boss.immune_to_concussion = true
	self.fuel_boss.headshot_dmg_mul = 1
	self.fuel_boss.no_headshot_add_mul = true
	self.fuel_boss.player_health_scaling_mul = 1.5
	
	self.fuel_boss_no_armor = deep_clone(self.hector_boss_no_armor)
	self.fuel_boss_no_armor.allowed_poses = {
		stand = true
	}
	self.fuel_boss_no_armor.crouch_move = false
end)