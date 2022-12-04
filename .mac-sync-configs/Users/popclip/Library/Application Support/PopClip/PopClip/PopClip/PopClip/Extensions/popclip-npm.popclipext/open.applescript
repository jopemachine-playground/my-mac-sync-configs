on run
	tell application "System Events"
		if "{popclip modifier flags}" is "131072" and "{popclip option useGithub}" is "1" then
			open location "https://github.com/search?q=" & "{popclip text}"
		else
			set statusCode to do shell script "curl -s -o /dev/null -w \"%{http_code}\" https://registry.npmjs.org/" & "{popclip text}" & "/latest"
			
			if statusCode is "200" then
				open location "https://www.npmjs.com/package/" & "{popclip text}"
			else
				open location "https://www.npmjs.com/search?q=" & "{popclip text}"
			end if
		end if
	end tell
end run