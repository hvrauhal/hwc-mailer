on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC j�senmaksu 2022 maksamatta"
	set theContent to "Hei,

K�vimme l�pi tilej� ja huomasimme ett� sinulla on maksamatta Helsinki Windsurfing Clubin maksut kaudelle 2022. Maksut ovat:

* J�senmaksu 20�
 * Lautapaikkavuokra 30�

Ole hyv� ja maksa j�senmaksusi ja lautapaikkavuokrasi mahdollisimman pian k�ytt�en henkil�kohtaista viitenumeroasi.

Saajan tili: FI41 5800 1320 2592 02 (OKOYFIHH)
Saajan nimi: Helsinki Windsurfing Club ry
Viitenumero: " & refNumber & "
Er�p�iv�: HETI
M��r�: esim. 50� (J�senmaksu 20� + Lautapaikkavuokra 30�)

Purjelautailu kasvattaa suosiotaan ja lautapaikoille on paljon kysynt��.
Jos haluat luopua paikastasi, ota yhteytt� minuun!


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
