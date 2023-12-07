import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";

import "CubePlugins.CrowdControlBroke.GeneralFunctions";
import "CubePlugins.CrowdControlBroke.Options";
import "CubePlugins.CrowdControlBroke.VindarPatch";
import "CubePlugins.CrowdControlBroke.Settings";
import "CubePlugins.CrowdControlBroke.Strings";
import "CubePlugins.CrowdControlBroke.Chat";

import "Deusdictum.UI.DragBar";
import "CubePlugins.CrowdControlBroke.MainWin";

function Main()
    LoadSettings();
    RegisterForUnload();

    InitializeChatMonitoring();
    InitializeOptions();

    InitializeMainWin();

    Info(GetString(_LANG.STATUS.LOADED));
end

Main();
