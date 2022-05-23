Hooks:PostHook(CharacterTweakData, "init", "fuel_init_characters", function(self)
    self.gangster.calls_in = nil

    self.fuel_hostage = deep_clone(self.old_hoxton_mission)
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
end)