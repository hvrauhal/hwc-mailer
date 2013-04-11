fs = require('fs')

exports.create = (filename, callback) ->
    fs.readFile filename, 'utf8', (err, data) ->
                people = JSON.parse data
                callback [{
                  text: """Moi #{p.name},

Kauden 2013 maksut ovat:

  * Jäsenmaksu 15€
  * Lautapaikkavuokra 30€
  * Liittymismaksu 20€

Ole hyvä ja maksa maksusi 2.5. mennessä tilille FI41 5800 1320 2592 02 (OKOYFIHH) 
käyttäen henkilökohtaista viitenumeroasi #{p.viite}.

Kevättalkoot pidetään 11.5. kello 10 alkaen. Teemana talkoissa konttien 
ulkopintojen maalaus. Tervetuloa!

Olemme päättäneet tarjota talkooapua myös SPLL:lle kahteen tapahtumaan, 
GrandSlam kilpailuihin 24.-26.5. ja elokuussa järjestettävään Lauttasaaren
ympäripurjehdukseen. Kerro osallistumisestasi meille osoitteessa: http://doodle.com/xefq6ap5kthbsb57


Surffiterveisin,

Heikki Rauhala
Varapuheenjohtaja / HWC

http://helsinkiwindsurfingclub.fi/ 
""",
                  from: 'Helsinki Windsurfing Club <hwc@helsinkiwindsurfingclub.fi>', 
                  to: "#{p.email}",
                  subject: "Jasenmaksu, kevattalkoot ja talkooapua"
                } for p in people] |> JSON.stringify


