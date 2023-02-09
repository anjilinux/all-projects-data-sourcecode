import flask
cpu = flask.Flask(__name__)
@cpu.route("/")
def ram():
    return flask.render_template("login.html")

@cpu.route("/newuser")
def  newuser():
    return flask.render_template("user.html")
    

if __name__ =="__main__":
    cpu.run(debug=True)
    
 
