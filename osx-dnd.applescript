-- http://apple.stackexchange.com/questions/145487/how-to-enable-disable-do-not-disturb-from-shell-on-mavericks
tell application "System Events" to tell process "SystemUIServer"
  key down option
  click menu bar item 1 of menu bar 2
  key up option
end tell
