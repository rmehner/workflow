tell application "System Events" to set SkypeIsRunning to (count of (every process whose name is "Skype")) > 0
if SkypeIsRunning then
  tell application "Skype"
    send command "SET USERSTATUS ONLINE" script name "SETSKYPESTATUSTOONLINE"
  end tell
end if
