sub Main()
	TestTitleData = {
		TitleID: invalid
	}
	TestTitleData = ParseJson(ReadAsciiFile("pkg:/TestTitleData.json")) ' A json file with the TitleID for your PlayFab title must be placed in the channel root directory to test functionality

	PlayFab().Settings.TitleID = TestTitleData.TitleID

	CustomID = GetRokuCustomID()
	if CustomID <> invalid
		ClientApi = PlayFab().ClientApi
		ClientApi.LoginWithCustomIDRequest(CustomID, true)
	else
		print "Unable To Login - ID invalid"
	end if
	stop
end sub
