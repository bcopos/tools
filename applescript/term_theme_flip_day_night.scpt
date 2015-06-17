tell application "Terminal"
	repeat with w from 1 to count window -1
		repeat with t from 1 to count tabs of window w
			if current settings of tab t of window w = (first settings set whose name is "Monokai Day") then
				set current settings of tab t of window w to (first settings set whose name is "Monokai")
			else
				set current settings of tab t of window w to (first settings set whose name is "Monokai Day")
			end if
		end repeat
	end repeat
end tell
