function GetRokuCustomID()
	user_id = invalid
	channel_store = CreateObject("roChannelStore")
	attempts = 0

	get_channel_creds:
	while user_id = invalid and attempts < 10
		creds = channel_store.GetChannelCred()
		if creds.status = 0
			parsed_data = ParseJson(creds.json)
			user_id = parsed_data.roku_pucid
		else
			if creds.channelID = "dev"
				user_id = "dev"
			else
				attempts++
			end if
		end if
	end while

	return user_id
end function
