sub Main()
	PlayFab().Settings.TitleID = "114"

	CustomID = GetRokuCustomID()
	if CustomID <> invalid
		ClientApi = PlayFab().ClientApi
		ClientApi.LoginWithCustomIDRequest(CustomID, true)
	else
		print "Unable To Login - ID invalid"
	end if
	stop
end sub
