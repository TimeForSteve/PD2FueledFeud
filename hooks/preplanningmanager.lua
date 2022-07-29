Hooks:PostHook(PrePlanningManager, "_check_spawn_deployable", "fuel_spawn_fak", function(self, type, element)
	local type_data = tweak_data.preplanning.types[type]
	local deployable_id = type_data.deployable_id

	if not deployable_id then
		return
	end

	local pos, rot = element:get_orientation()

	if deployable_id == "first_aid_kit" then
		FirstAidKitBase.spawn(pos, rot, 0)
	end
end)