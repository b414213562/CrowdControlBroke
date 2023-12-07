
function InitializeChatMonitoring()
    Turbine.Chat.Received = HandleAllChat;
end

function HandleAllChat(sender, args)
    -- Note: CombatEvents is called Death in the enumeration
    if (args.ChatType == Turbine.ChatType.Death) then
        HandleCombatEventChat(args.Message);
    end
end

function HandleCombatEventChat(message)
    for key, value in pairs(_LANG.CHAT) do
        local currentCrowdControlBreakPattern = GetString(value);
        --Debug("Checking '" .. currentCrowdControlBreakPattern .. "'");

        local whoBrokeCC, mobFreed, effect = string.match(message, currentCrowdControlBreakPattern);
        if (whoBrokeCC ~= nil) then
            HandleBrokenCrowdControl(whoBrokeCC, mobFreed, effect);
            break;
        end
    end
end

function HandleBrokenCrowdControl(whoBrokeCC, mobFreed, effect)
    -- Add an option to turn off Standard channel reporting?
    local whoBrokeCCWithColor = "<rgb=#FF0000>" .. whoBrokeCC .. "</rgb>";
    local effectWithColor = "<rgb=#00FF00>" .. effect .. "</rgb>";
    local mobFreedWithColor = "<rgb=#0000FF>" .. mobFreed .. "</rgb>";
    local outputText = whoBrokeCCWithColor .. " broke " .. mobFreedWithColor .. "'s " .. effectWithColor;
    Info(outputText);
end