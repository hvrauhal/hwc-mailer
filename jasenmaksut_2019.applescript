on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2019 ja kev�ttalkoot"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2019 ovat:

 * J�senmaksu 20�
 * Lautapaikkavuokra 30�
 * Liittymismaksu 20�

Ole hyv� ja maksa j�senmaksusi ja lautapaikkavuokrasi tilille
FI41 5800 1320 2592 02 (OKOYFIHH) mahdollisimman pian k�ytt�en
henkil�kohtaista viitenumeroasi " & refNumber & ". Jos haluat luopua
paikastasi, teeth�n sen ennen kev�ttalkoita, niin voit j�tt�� maksut
maksamatta ja saamme paikan aktiivik�ytt��n tulevalle kes�lle.

Kev�ttalkoot j�rjestet��n lauantaina 18.5. klo 12 alkaen, tervetuloa!
https://www.facebook.com/events/453760378778151/


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
