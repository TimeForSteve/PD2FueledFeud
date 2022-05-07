Hooks:PostHook(MissionEndState, "chk_complete_heist_achievements", "fuel_weapon_achievement", function(self)
    if self._success then
		if not managers.statistics:is_dropin() then
            local primary = managers.blackmarket:equipped_primary()
            local secondary = managers.blackmarket:equipped_secondary()
            
            if primary.weapon_id == "hk21" and secondary.weapon_id == "arbiter" then
                log("you got the achievement mate, very epic")
            end
        end
    end
end)