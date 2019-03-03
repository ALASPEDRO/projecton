import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return '<H1> Welcome! </H1>'

@app.route('/how are you')
def hello():
    return '<H2> I am good, how about you?</H2>'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
