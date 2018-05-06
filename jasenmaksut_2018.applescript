on run argv
	set recipientAddress to item 1 of argv
	set refNumber to item 2 of argv
	set theSubject to "HWC maksut 2018, kev�ttalkoot ja yhdistyksen kokous"
	set theContent to "Hei,

Helsinki Windsurfing Clubin maksut kaudelle 2018 ovat:

 * J�senmaksu 20�
 * Lautapaikkavuokra 30�
 * Liittymismaksu 20�

Ole hyv� ja maksa j�senmaksusi ja lautapaikkavuokrasi tilille
FI41 5800 1320 2592 02 (OKOYFIHH) mahdollisimman pian k�ytt�en
henkil�kohtaista viitenumeroasi " & refNumber & ". Jos haluat luopua
paikastasi, teeth�n sen ennen kev�ttalkoita, niin voit j�tt�� maksut
maksamatta ja saamme paikan aktiivik�ytt��n tulevalle kes�lle.

Kev�ttalkoot j�rjestet��n lauantaina 26.5. klo 12 alkaen, tervetuloa!
https://www.facebook.com/events/206265143314298/

Ennen kev�ttalkoita pidet��n yhdistyksen ylim��r�inen kokous.

Ylim��r�isen kokouksen esityslista:

* Kokous avataan
* Valitaan kokoukselle puheenjohtaja, sihteeri ja p�yt�kirjan tarkastaja
* Todetaan kokouksen laillisuus ja p��t�svaltaisuus sek� hyv�ksyt��n esityslista
* Esitet��n vuoden 2017 tilit ja toiminnantarkastajien lausunto
* P��tet��n tili- ja vastuuvapauden my�nt�misest� hallitukselle ja muille tilivelvollisille
* Valtuutetaan yhdistyksen puheenjohtaja Heikki Rauhala tekem��n muutokset tilink�ytt�oikeuksiin:
** Poistetaan tilink�ytt�oikeus Jani Holopaiselta
** Annetaan laajat tilink�ytt�oikeudet Jarmo M�kiselle
* K�sitell��n muut asiat
* P��tet��n kokous


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
