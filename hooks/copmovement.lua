CopMovement._action_variants.fuel_hostage = CopMovement._action_variants.fuel_hostage or clone(CopMovement._action_variants.old_hoxton_mission)

function IgnoreAlertsMovement:set_cool(state, giveaway)
    if self._stance.name == "ntl" then
        return
    end
    IgnoreAlertsMovement.super.set_cool(self, state, giveaway)
end