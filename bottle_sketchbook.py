from bottle import Bottle, route, static_file, run, template, error

app = Bottle()

@app.route('/static/css/<filename:re:.*\.css>')
def static_css(filename):
	return static_file(filename, root='static/css')

@app.route('/sketchbook')
def sketchbook():
	return template('sketchbook')

@app.error(404)
def error404(error):
	return 'Oops, sorry! 404 *-* no page here!'

run(app, host='localhost', port=8080, debug=True)
