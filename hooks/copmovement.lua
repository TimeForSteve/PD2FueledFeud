CopMovement._action_variants.fuel_hostage = CopMovement._action_variants.security
CopMovement._action_variants.fuel_boss = CopMovement._action_variants.fuel_boss or clone(CopMovement._action_variants.security)
CopMovement._action_variants.fuel_boss.walk = TankCopActionWalk
CopMovement._action_variants.fuel_boss_no_armor = CopMovement._action_variants.security


function IgnoreAlertsMovement:set_cool(state, giveaway)
    if self._stance.name == "ntl" then
        return
    end
    IgnoreAlertsMovement.super.set_cool(self, state, giveaway)
end