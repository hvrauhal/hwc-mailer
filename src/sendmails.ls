global <<< require \prelude-ls
mailcreator = require('./mailcreator.js')
email = require 'emailjs'
path = require 'path'
fs = require 'fs'

peoplepath = path.resolve(__dirname, '../prod-people.json')
emailconfigpath = path.resolve(__dirname, '../prod-config.json')

fs.readFile emailconfigpath, 'utf8', (err, data) ->
  emailconfig = JSON.parse data
  server = email.server.connect emailconfig
  mailcreator.create peoplepath, (emails) ->
   sendit = (email) ->
    console.log 'sending', email
    server.send email, (err, message) ->
      console.log err || message.header['message-id']
   each sendit, emails
