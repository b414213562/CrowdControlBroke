
function InitializeOptions()
    local options = Turbine.UI.Control();
    options:SetHeight(200);
    --options:SetBackColor(Turbine.UI.Color.DarkBlue);
    plugin.GetOptionsPanel = function(self) return options; end

    local top = 20;

    if (SHOW_DEBUG_OPTIONS) then
        local debugLabel = Turbine.UI.Label();
        debugLabel:SetParent(options);
        debugLabel:SetText("Debug Options:");
        debugLabel:SetSize(100, 15);
        debugLabel:SetPosition(10, top);
        top = top + 20;

        local dazeButton = Turbine.UI.Lotro.Button();
        dazeButton:SetParent(options);
        dazeButton:SetSize(100, 30);
        dazeButton:SetPosition(10, top);
        dazeButton:SetText("Break Daze!")
        dazeButton.Click = function(sender, args)
            HandleBrokenCrowdControl("Rosenbleume", "a Balrog of Morgoth", "daze");
        end

        local fearButton = Turbine.UI.Lotro.Button();
        fearButton:SetParent(options);
        fearButton:SetSize(100, 30);
        fearButton:SetPosition(15 + 100, top);
        fearButton:SetText("Break Fear!")
        fearButton.Click = function(sender, args)
            HandleBrokenCrowdControl("Gael", "Sauron", "fear");
        end
        top = top + 35;

    end

end