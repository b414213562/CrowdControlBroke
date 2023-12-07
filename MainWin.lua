
function InitializeMainWin()

    window = Turbine.UI.Window();
    window:SetSize(200, 200);
    window:SetPosition(800, 400);
    window:SetVisible(true);
    window:SetBackColor(Turbine.UI.Color.DarkBlue);

    window.DragBar = Deusdictum.UI.DragBar( window, "Crowd Control Broke" );


end