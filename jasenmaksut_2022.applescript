on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2022 ja kevättalkoot"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2022 ovat:

 * Jäsenmaksu 20€
 * Lautapaikkavuokra 30€
 * Liittymismaksu 20€

Ole hyvä ja maksa jäsenmaksusi ja lautapaikkavuokrasi 11.5.2022 mennessä käyttäen
henkilökohtaista viitenumeroasi.

Saajan tili: FI41 5800 1320 2592 02 (OKOYFIHH) 
Saajan nimi: Helsinki Windsurfing Club ry
Viitenumero: " & refNumber & "
Eräpäivä: 11.5.2022
Määrä: esim. 50€ (Jäsenmaksu 20€ + Lautapaikkavuokra 30€)

Purjelautailu kasvattaa suosiotaan ja lautapaikoille on paljon kysyntää. 
Jos haluat luopua paikastasi, ota yhteyttä minuun!

Tervetuloa kevättalkoisiin lauantaina 14.5. klo 12 alkaen konteille.
Keskustelu kevättalkoisiin liittyen fb-tapahtumassa:
https://www.facebook.com/events/384355453507676


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
