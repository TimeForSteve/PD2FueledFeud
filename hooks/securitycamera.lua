GangsterSecurityCamera = GangsterSecurityCamera or class(SecurityCamera)
function GangsterSecurityCamera:_sound_the_alarm(detected_unit)
	if self._alarm_sound then
		return
	end

	if Network:is_server() then
		if self._mission_script_element then
			self._mission_script_element:on_alarm(self._unit)
		end

		self:_send_net_event(self._NET_EVENTS.alarm_start)

		self._call_police_clbk_id = "cam_call_cops" .. tostring(self._unit:key())

		managers.enemy:add_delayed_clbk(self._call_police_clbk_id, callback(self, self, "clbk_call_the_police"), Application:time() + 3)

		self:_destroy_all_detected_attention_object_data()
		self:set_detection_enabled(false, nil, nil)
	end

	if self._suspicion_sound then
		self._suspicion_sound = nil

		self._unit:sound_source():post_event("camera_suspicious_signal_stop")
	end

	self._alarm_sound = self._unit:sound_source():post_event("camera_alarm_signal")
end

function GangsterSecurityCamera:clbk_call_the_police()
    managers.mission:call_global_event("uno_access_denied")
end