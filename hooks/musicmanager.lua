Hooks:PostHook(MusicManager, "jukebox_default_tracks", "fuel_default_track", function(self)
    self:track_attachment_add("heist_fuel_name", "track_fuel")
end)