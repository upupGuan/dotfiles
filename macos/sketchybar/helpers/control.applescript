tell application "System Events"
    tell process "ControlCenter"
        set wifiIcon to first menu bar item of menu bar 1 whose description starts with "控制中心"
        
        click wifiIcon
    end tell
end tell
