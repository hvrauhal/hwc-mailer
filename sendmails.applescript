# set recipientName to "Heikki"
set recipientAddress to "Ora.Julkunen@helsinki.fi"
set refNumber to "201300606"
set theSubject to "HWC Jäsen- ja lautapaikkamaksut"
set theContent to "Hei,

Emme ole saaneet Helsinki Windsurfing Clubin jäsenmaksujasi vuodelta 2013.

Yhden lautapaikan kanssa maksu vuodelta 2013 on 45€.

Ole hyvä ja maksa 45€ HWC:n tilille FI41 5800 1320 2592 02 (OKOYFIHH) käyttäen viitettä " & refNumber & ". Jos maksuissa tai lautapaikan käytössä on jotain epäselvyyttä, voit soittaa minulle numeroon 040 7692277.

Surffiterveisin,

Heikki Rauhala / HWC"

tell application "Mail"
	
	##Create the message
	set theMessage to make new outgoing message with properties {subject:theSubject, content:theContent, visible:true}
	
	##Set a recipient
	tell theMessage
		make new to recipient with properties {address:recipientAddress}
		# name:recipientName, 
		##Send the Message
		send
		
	end tell
end tell
