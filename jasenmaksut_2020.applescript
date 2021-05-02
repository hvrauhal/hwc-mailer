on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2020 ja kevättalkoot"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2020 ovat:

 * Jäsenmaksu 20€
 * Lautapaikkavuokra 30€
 * Liittymismaksu 20€

Ole hyvä ja maksa jäsenmaksusi ja lautapaikkavuokrasi tilille
FI41 5800 1320 2592 02 (OKOYFIHH) mahdollisimman pian käyttäen
henkilökohtaista viitenumeroasi " & refNumber & ". Jos haluat luopua
paikastasi, teethän sen mahdollisimman pian ja otat yhteyttä minuun.
Lautapaikoille on tällä hetkellä paljon kysyntää!

Tämän kauden kevättalkoot järjestetään lain salliessa 23.5. klo 12 
alkaen konteilla. Keskustelu kevättalkoisiin liittyen fb-tapahtumassa:
https://www.facebook.com/events/522893545054608/


Surffiterveisin,

Heikki Rauhala / HWC

hwc@helsinkiwindsurfingclub.fi
http://helsinkiwindsurfingclub.fi/
https://www.facebook.com/groups/helsinkiwindsurfingclub/
"
	
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
end run
