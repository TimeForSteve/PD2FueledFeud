if RequiredScript == "lib/managers/mission/elementaccesscamera" then
    function ElementAccessCamera:trigger_left(instigator)
        if Network:is_client() then
            managers.network:session():send_to_host("to_server_access_camera_trigger", self._id, "left", instigator)
        else
            self:check_triggers("left", instigator)
        end
    end
elseif RequiredScript == "lib/states/ingameaccesscamera" then
    Hooks:PreHook(IngameAccessCamera, "at_exit", "fuel_camera_left_trigger", function(self)
        
        if self._last_access_camera then
            self._last_access_camera:trigger_left(managers.player:player_unit())
        end

    end)
end