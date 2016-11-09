fs = require('fs')
readline = require('readline')

rd = readline.createInterface
  input: fs.createReadStream('example.csv')
  output: process.stdout
  terminal: false

rd.on 'line',(line)->
  console.log line

  col = line.split(',')
  zip = col[0]
  city = col[1]
  state = col[2]

  obj = 
  	zip:zip
  	city:city
  	state:state

  console.log JSON.stringify obj