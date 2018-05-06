on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2018, kevŠttalkoot ja yhdistyksen kokous"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2018 ovat:

 * JŠsenmaksu 20Û
 * Lautapaikkavuokra 30Û
 * Liittymismaksu 20Û

Ole hyvŠ ja maksa jŠsenmaksusi ja lautapaikkavuokrasi tilille
FI41 5800 1320 2592 02 (OKOYFIHH) mahdollisimman pian kŠyttŠen
henkilškohtaista viitenumeroasi " & refNumber & ". Jos haluat luopua
paikastasi, teethŠn sen ennen kevŠttalkoita, niin voit jŠttŠŠ maksut
maksamatta ja saamme paikan aktiivikŠyttššn tulevalle kesŠlle.

KevŠttalkoot jŠrjestetŠŠn lauantaina 26.5. klo 12 alkaen, tervetuloa!
https://www.facebook.com/events/206265143314298/

Ennen kevŠttalkoita pidetŠŠn yhdistyksen ylimŠŠrŠinen kokous.

YlimŠŠrŠisen kokouksen esityslista:

* Kokous avataan
* Valitaan kokoukselle puheenjohtaja, sihteeri ja pšytŠkirjan tarkastaja
* Todetaan kokouksen laillisuus ja pŠŠtšsvaltaisuus sekŠ hyvŠksytŠŠn esityslista
* EsitetŠŠn vuoden 2017 tilit ja toiminnantarkastajien lausunto
* PŠŠtetŠŠn tili- ja vastuuvapauden myšntŠmisestŠ hallitukselle ja muille tilivelvollisille
* Valtuutetaan yhdistyksen puheenjohtaja Heikki Rauhala tekemŠŠn muutokset tilinkŠyttšoikeuksiin:
** Poistetaan tilinkŠyttšoikeus Jani Holopaiselta
** Annetaan laajat tilinkŠyttšoikeudet Jarmo MŠkiselle
* KŠsitellŠŠn muut asiat
* PŠŠtetŠŠn kokous


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
