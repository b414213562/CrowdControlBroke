
VERBOSE_OUTPUT = false;
SHOW_DEBUG_OPTIONS = false;

DEFAULT_SETTINGS = {
    OPTIONS = {
        -- Have we reminded the user to turn on combat break messages?
        HAVE_PROMPTED_USER = false;
    };
};

SETTINGS = {};

function LoadSettings()
    local loadedSettings = PatchDataLoad(
        Turbine.DataScope.Character,
        "CrowdControlBroke_Settings");

    -- Finish loading the settings

    Debug("Crowd Control Broke: Settings loaded");
end

function SaveSettings()
    PatchDataSave(
        Turbine.DataScope.Character,
        "CrowdControlBroke_Settings",
        SETTINGS);
    Debug("Crowd Control Broke: Settings saved");
end

function RegisterForUnload()
    Turbine.Plugin.Unload = function(sender, args)
        SaveSettings();
        Info(GetString(_LANG.STATUS.UNLOADED));
    end
end