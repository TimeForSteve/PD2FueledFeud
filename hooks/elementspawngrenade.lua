function ElementSpawnGrenade:on_executed(instigator)
	if not self._values.enabled then
		return
	end

	ProjectileBase.throw_projectile(self._values.grenade_type, self._values.position, self._values.spawn_dir * self._values.strength)

	ElementSpawnGrenade.super.on_executed(self, instigator)
end