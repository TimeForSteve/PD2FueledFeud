Hooks:PostHook( GuiTweakData, "init", "yaeger_contact", function(self)
	local contact_data = {
		id = "yaeger",
		name_id = "contact_yaeger_name",
		{
			desc_id = "contact_yaeger_desc",
			video = "bain",
			post_event = nil
		}
	}

	table.insert(self.crime_net.codex[1], contact_data)
end)