on run argv
	# set recipientName to "Heikki"
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC J�sen- ja lautapaikkamaksut 2014"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelta 2014 ovat:

 * J�senmaksu 20�
 * Lautapaikkavuokra 30�
 * Liittymismaksu 20�

Ole hyv� ja maksa j�senmaksusi ja mahdollinen lautapaikkavuokrasi,
sek� liittymismaksusi tilille FI41 5800 1320 2592 02 (OKOYFIHH) 
k�ytt�en henkil�kohtaista viitenumeroasi " & refNumber & ".

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