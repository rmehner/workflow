tell application "System Events" to set SkypeIsRunning to (count of (every process whose name is "Skype")) > 0
if SkypeIsRunning then
  tell application "Skype"
    send command "SET USERSTATUS DND" script name "SETSKYPESTATUSTODND"
  end tell
end if
