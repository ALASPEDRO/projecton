import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return '<H1> Welcome! </H1>'

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

@app.route('/I am fine thaks')
def hello():
    return 'Glad to now, how about you?'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
