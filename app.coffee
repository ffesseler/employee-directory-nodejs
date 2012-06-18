express = require 'express'
routes = require './routes'
app = express.createServer()

app.configure ->
	app.set 'views', __dirname + '/views'
	app.set 'view engine', 'jade'
	app.use express.bodyParser()
	app.use express.methodOverride()
	app.use app.router
	app.use express.static __dirname + '/public'

port = process.env.PORT or 3000

app.get '/', routes.index

app.listen port, ->
	console.log "Express server listening on port %d in %s mode", app.address().port, app.settings.env
