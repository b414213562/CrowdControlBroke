
function Debug(message)
    if (message == nil or message == "" or not VERBOSE_OUTPUT) then
        return;
    end

    Turbine.Shell.WriteLine("<rgb=#FF5555>" .. message .. "</rgb>");
end

function Info(message)
    if (message == nil or message == "") then
        return;
    end

    Turbine.Shell.WriteLine("<rgb=#55FF55>" .. message .. "</rgb>");
end

-- Basic debug function to look at a table:
function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end
