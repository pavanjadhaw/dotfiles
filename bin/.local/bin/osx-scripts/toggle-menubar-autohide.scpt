tell application "System Events"
    tell dock preferences
        set currentStatus to autohide menu bar
        set autohide menu bar to not currentStatus
    end tell
end tell
