on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2020 ja kev�ttalkoot"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2020 ovat:

 * J�senmaksu 20�
 * Lautapaikkavuokra 30�
 * Liittymismaksu 20�

Ole hyv� ja maksa j�senmaksusi ja lautapaikkavuokrasi tilille
FI41 5800 1320 2592 02 (OKOYFIHH) mahdollisimman pian k�ytt�en
henkil�kohtaista viitenumeroasi " & refNumber & ". Jos haluat luopua
paikastasi, teeth�n sen mahdollisimman pian ja otat yhteytt� minuun.
Lautapaikoille on t�ll� hetkell� paljon kysynt��!

T�m�n kauden kev�ttalkoot j�rjestet��n lain salliessa 23.5. klo 12 
alkaen konteilla. Keskustelu kev�ttalkoisiin liittyen fb-tapahtumassa:
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
