
clientLanguage = Turbine.Engine:GetLanguage();

pluginName = plugin:GetName();
pluginVersion = plugin:GetVersion();
pluginDescription = string.format("'%s' v%s, by Cube", pluginName, pluginVersion);

EN = Turbine.Language.English;
DE = Turbine.Language.German;
FR = Turbine.Language.French;

_LANG = {
    ["STATUS"] = {
        ["LOADED"] = {
            [EN] = "Loaded " .. pluginDescription;
            [DE] = "Geladen " .. pluginDescription;
        };
        ["UNLOADED"] = {
            [EN] = string.format("'%s' unloaded", pluginName);
        };
    };
    ["CHAT"] = {
        -- Crowd control type_Who did the breaking?

        -- Daze:
        -- You have freed Scouting Goblin-warrior from a daze!
        ["DAZE_SELF"] = {
            [EN] = "(.*) have freed (.*) from a (.*)!";
        };
        -- Longbeard Warrior has freed Weather-driven Beast from a daze!
        ["DAZE_OTHER"] = {
            [EN] = "(.*) has freed (.*) from a (.*)!";
        };

        -- Fear:
        -- Your attack has broken Moria Orc-skirmisher of their fear!
        ["FEAR_SELF"] = {
            [EN] = "(.*) has broken (.*) of their (.*)!";
        };
        -- Rosenbleume has broken Moria Warg-rider of their fear with an attack!
        ["FEAR_OTHER"] = {
            [EN] = "(.*) has broken (.*) of their (.*) with an attack";
        };

        -- Is there a root effect that can be broken?

        -- Is there a snare effect that can be broken?

        -- Cracked Earth (Lore-master) (Root? Snare? Both?)
        -- Hunter Trap might be a root?

    };
};

-- Ex: GetString(_LANG.CHAT.DAZE_SELF)
function GetString(text)
    -- use clientLanguage, it's always right

    -- If they passed in a non-existant thing, return an empty string
    if (text == nil) then return ""; end

    -- If the text is present in the language, return it
    if (text[clientLanguage] ~= nil) then return text[clientLanguage]; end

    -- Otherwise, fall back to English
    return text[EN];
end
