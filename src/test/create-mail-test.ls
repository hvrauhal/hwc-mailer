assert = require('chai').assert
mailcreator = require('../mailcreator.js')
path = require('path')
test = it

describe 'Mailcreator', ->
  test 'creates emails', (done) ->
    mailcreator.create path.resolve(__dirname, '../../test/test-people.json'), (emails) ->
      expectedText = """Moi Heikki,

Kauden 2013 maksut ovat:

  * Jäsenmaksu 15€
  * Lautapaikkavuokra 30€
  * Liittymismaksu 20€

Ole hyvä ja maksa maksusi 2.5. mennessä tilille FI41 5800 1320 2592 02 (OKOYFIHH) 
käyttäen henkilökohtaista viitenumeroasi 201300012.

Kevättalkoot pidetään 11.5. kello 10 alkaen. Teemana talkoissa konttien 
ulkopintojen maalaus. Tervetuloa!

Olemme päättäneet tarjota talkooapua myös SPLL:lle kahteen tapahtumaan, 
GrandSlam kilpailuihin 24.-26.5. ja elokuussa järjestettävään Lauttasaaren
ympäripurjehdukseen. Kerro osallistumisestasi meille osoitteessa: http://doodle.com/xefq6ap5kthbsb57


Surffiterveisin,

Heikki Rauhala
Varapuheenjohtaja / HWC

http://helsinkiwindsurfingclub.fi/ 
"""
      assert.equal(emails[0].text, expectedText)
      do done
                                   
