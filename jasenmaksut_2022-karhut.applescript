on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC jäsenmaksu 2022 maksamatta"
	set theContent to "Hei,

Kävimme läpi tilejä ja huomasimme että sinulla on maksamatta Helsinki Windsurfing Clubin maksut kaudelle 2022. Maksut ovat:

* Jäsenmaksu 20€
 * Lautapaikkavuokra 30€

Ole hyvä ja maksa jäsenmaksusi ja lautapaikkavuokrasi mahdollisimman pian käyttäen henkilökohtaista viitenumeroasi.

Saajan tili: FI41 5800 1320 2592 02 (OKOYFIHH)
Saajan nimi: Helsinki Windsurfing Club ry
Viitenumero: " & refNumber & "
Eräpäivä: HETI
Määrä: esim. 50€ (Jäsenmaksu 20€ + Lautapaikkavuokra 30€)

Purjelautailu kasvattaa suosiotaan ja lautapaikoille on paljon kysyntää.
Jos haluat luopua paikastasi, ota yhteyttä minuun!


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
