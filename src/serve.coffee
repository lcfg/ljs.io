express = require('express')
fs = require('fs')

app = express()

# Compress everything.
app.use(express.compress())

# Serve up our static directory.
app.use(express.static(__dirname + '/static'))

# By default redirect all unmatched GET requests to the index.
app.use (req, res, next) ->
	if req.method.toUpperCase() is 'GET'
		fs.createReadStream(__dirname + '/static/index.html').pipe(res)
	else
		next()

app.listen(3000)

console.log('Listening on port 3000...')
