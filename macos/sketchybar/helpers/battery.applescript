tell application "System Events"
    tell process "ControlCenter"
        set batteryIcon to first menu bar item of menu bar 1 whose description starts with "battery"
        
        click batteryIcon
    end tell
end tell
